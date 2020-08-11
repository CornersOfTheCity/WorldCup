package coaches

import (
	initiator "WorldCup.Practise/WordCup/infra/init"
	"WorldCup.Practise/WordCup/infra/model"
	"errors"
	"fmt"
	"github.com/gin-gonic/gin"
	"net/http"
	"strconv"
)

var (
	ErrorCoachID    = errors.New("coach id is not allow")
	ErrorCoachParam = errors.New("coach param wrong")
)

// ShowCoachHandler will list a Coach
// @Summary 根据奖项ID搜寻获奖记录
// @Accept json
// @Tags Coaches
// @Security Bearer
// @Produce  json
// @Param id path string true "根据id搜寻"
// @Resource Coaches
// @Router /coaches/{id} [get]
// @Success 200 {object} model.CoachSerializer
func ShowCoachHandler(ctx *gin.Context) {
	id := ctx.Param("coachID")
	number, _ := strconv.Atoi(id)
	fmt.Printf("number:%d", number)
	if number > 32 || number < 0 {
		ctx.JSON(400, ctx.AbortWithError(400, ErrorCoachID))
		return
	}

	var coach model.Coach
	if dbError := initiator.POSTGRES.Where("id = ?", id).First(&coach).Error; dbError != nil {
		ctx.JSON(400, ctx.AbortWithError(400, dbError))
		return
	}

	ctx.JSON(http.StatusOK, coach.Serializer())
}

type ListCoachParam struct {
	Search     string `json:"search" binding:"required" example:""`
	ReturnMode string `json:"returnMode" binding:"required" example:"all_list"`
	Country    string `json:"country" binding:"required" example:"Japan"`
}

// ShowAllCoachHandler will list  Coaches
// @Summary 根据奖项内容搜寻获奖记录
// @Accept json
// @Tags Coaches
// @Security Bearer
// @Produce  json
// @Param coach body coaches.ListCoachParam true "根据名称、国家搜寻和显示模式"
// @Resource Coaches
// @Router /coaches [post]
// @Success 200 {array} model.CoachSerializer
func ShowAllCoachHandler(ctx *gin.Context) {

	var param ListCoachParam
	if err := ctx.ShouldBindJSON(&param); err != nil {
		ctx.AbortWithError(400, ErrorCoachParam)
		return
	}

	var coaches []model.Coach

	if param.Search != "" {
		if dbError := initiator.POSTGRES.Where("name LIKE ?", fmt.Sprintf("%%%s%%", param.Search)).Find(&coaches).Error; dbError != nil {
			ctx.JSON(400, ctx.AbortWithError(400, dbError))
			return
		}
	}

	if param.ReturnMode == "all_list" {
		if dbError := initiator.POSTGRES.Find(&coaches).Error; dbError != nil {
			ctx.JSON(400, ctx.AbortWithError(400, dbError))
			return
		}
	}

	if param.Country != "" {
		if dbError := initiator.POSTGRES.Where("country_name LIKE ?", fmt.Sprintf("%%%s%%", param.Country)).Find(&coaches).Error; dbError != nil {
			ctx.JSON(400, ctx.AbortWithError(400, dbError))
			return
		}
	}

	var result = make([]model.CoachSerializer, len(coaches))

	for index, coach := range coaches {
		result[index] = coach.Serializer()
	}

	ctx.JSON(http.StatusOK, result)
}
