package groups

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
	ErrorId         = errors.New("id should less than 32")
	ErrorGroupParam = errors.New("group param is not correct")
)

type ListGroupParam struct {
	TeamName   string `json:"teamName" binding:"required" example:"Russia"`
	ReturnMode string `json:"returnMode" binding:"required" example:"all_list"`
	GroupName  string `json:"groupName" binding:"required" example:"Group A"`
}

// @Summary 根据队名、组名查询队伍
// @Accept json
// @Tags Groups
// @Security Bearer
// @Produce  json
// @Param group body groups.ListGroupParam true "队名、组名查询队伍和显示模式"
// @Resource Groups
// @Router /groups [post]
// @Success 200 {array} model.GroupSerializer
func ListGroupPhaseHandler(ctx *gin.Context) {
	var params ListGroupParam
	if err := ctx.ShouldBindJSON(&params); err != nil {
		ctx.AbortWithError(400, ErrorGroupParam)
		return
	}
	fmt.Printf("TeamName:%s", params.TeamName)
	var groups []model.Group
	if params.TeamName != "" {
		if dbError := initiator.POSTGRES.Where("team_name LIKE ?", fmt.Sprintf("%%%s%%", params.TeamName)).Find(&groups).Error; dbError != nil {
			ctx.AbortWithError(400, dbError)
			return
		}

	}

	if params.ReturnMode == "all_list" {
		if dbError := initiator.POSTGRES.Find(&groups).Error; dbError != nil {
			ctx.JSON(400, ctx.AbortWithError(400, dbError))
			return
		}
	}

	if params.GroupName != "" {
		if dbError := initiator.POSTGRES.Where("group_name LIKE ?", fmt.Sprintf("%%%s%%", params.GroupName)).Find(&groups).Error; dbError != nil {
			ctx.JSON(400, ctx.AbortWithError(400, dbError))
			return
		}
	}

	var result []model.GroupSerializer

	for _, group := range groups {
		result = append(result, group.Serializer())
	}
	ctx.JSON(200, result)

}

// @Summary 根据队伍ID查询队伍
// @Accept json
// @Tags Groups
// @Security Bearer
// @Produce  json
// @Param id path string true "group id"
// @Resource Groups
// @Router /groups/{id} [get]
// @Success 200 {object} model.GroupSerializer
func GroupPhaseHandler(c *gin.Context) {

	number, _ := strconv.Atoi(c.Param("groupID"))
	if number > 32 && number < 0 {
		c.JSON(400, c.AbortWithError(404, ErrorId))
		return
	}

	var group model.Group

	if dbError := initiator.POSTGRES.Where("id = ?", number).First(&group).Error; dbError != nil {
		c.JSON(400, c.AbortWithError(404, dbError))
		return
	}

	c.JSON(
		http.StatusOK,
		group.Serializer(),
	)

}
