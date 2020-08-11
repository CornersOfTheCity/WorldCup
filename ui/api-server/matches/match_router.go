package matches

import (
	initiator "WorldCup.Practise/WordCup/infra/init"
	"WorldCup.Practise/WordCup/infra/model"
	"errors"
	"fmt"
	"github.com/gin-gonic/gin"
	"strconv"
)

var (
	ErrorMatchNumber = errors.New("number not allow")
)

// @Summary 根据ID搜索比赛
// @Accept json
// @Tags Match
// @Security Bearer
// @Produce  json
// @Param id path string true "比赛ID"
// @Resource Match
// @Router /matches/{id} [get]
// @Success 200 {object} model.MatchSerializer
func MatchHandler(ctx *gin.Context) {
	id := ctx.Param("matchID")
	number, _ := strconv.Atoi(id)
	fmt.Printf("matchID:%d", number)
	if number > 64 || number < 0 {
		ctx.JSON(400, ctx.AbortWithError(400, ErrorMatchNumber))
		return
	}

	var match model.Match
	if dbError := initiator.POSTGRES.Where("id = ?", id).First(&match).Error; dbError != nil {
		ctx.JSON(400, ctx.AbortWithError(400, dbError))
		return
	}

	ctx.JSON(200, match.Serializer())

}

type ListMatchParam struct {
	CountryLeft  string `form:"countryLeft"`
	CountryRight string `form:"countryRight"`
	Return       string `form:"return"`
	Match        string `form:"match_number"`
	Country      string `form:"country_name"`
	Group        string `form:"group_name"`
}

// @Summary 根据国家、队名等搜索比赛
// @Accept json
// @Tags Match
// @Security Bearer
// @Produce  json
// @Param countryLeft query string false "国家A"
// @Param countryRight query string false "国家B"
// @Param return query string false "全部列出(true/false)"
// @Param match_number query string false "比赛场数(int)"
// @Param country_name query string false "国家名称"
// @Param group_name query string false "队伍名称"
// @Resource Match
// @Router /matches [get]
// @Success 200 {array} model.MatchSerializer
func ListMatchHandler(ctx *gin.Context) {
	var param ListMatchParam
	if err := ctx.ShouldBindQuery(&param); err != nil {
		ctx.JSON(400, ctx.AbortWithError(400, err))
		return
	}

	var matches []model.Match

	if param.CountryLeft != "" {
		if dbError := initiator.POSTGRES.Where("country_left LIKE ?", fmt.Sprintf("%%%s%%", param.CountryLeft)).Find(&matches).Error; dbError != nil {
			ctx.JSON(400, ctx.AbortWithError(400, dbError))
			return
		}
	}

	if param.CountryRight != "" {
		if dbError := initiator.POSTGRES.Where("country_right LIKE ?", fmt.Sprintf("%%%s%%", param.CountryRight)).Find(&matches).Error; dbError != nil {
			ctx.JSON(400, ctx.AbortWithError(400, dbError))
			return
		}
	}

	if param.Return == "true" {
		if dbError := initiator.POSTGRES.Find(&matches).Error; dbError != nil {
			ctx.JSON(400, ctx.AbortWithError(400, dbError))
			return
		}
	}

	if param.Match != "" {
		if dbError := initiator.POSTGRES.Where("match_number = ?", param.Match).Find(&matches).Error; dbError != nil {

			ctx.JSON(400, ctx.AbortWithError(400, dbError))
			return
		}
	}

	if param.Group != "" {
		if dbError := initiator.POSTGRES.Where("group_name LIKE ?", fmt.Sprintf("%%%s%%", param.Group)).Error; dbError != nil {
			ctx.JSON(400, ctx.AbortWithError(400, dbError))
			return
		}
	}

	var result = make([]model.MatchSerializer, len(matches))

	for index, match := range matches {
		result[index] = match.Serializer()
	}

	ctx.JSON(200, result)
}
