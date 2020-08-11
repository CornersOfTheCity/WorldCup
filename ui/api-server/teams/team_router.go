package teams

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
	ErrorTeam      = errors.New("not found record")
	ErrorTeamId    = errors.New("id is not allow")
	ErrorTeamParam = errors.New("list team param error")
)

type ListTeamParam struct {
	TeamName string `json:"teamName" binding:"required" example:"Australia"`
	Return   string `json:"returnMode" binding:"required" example:"false"`
}

// @Summary 根据国家等搜寻信息
// @Accept json
// @Tags Teams
// @Security Bearer
// @Produce  json
// @Param team body teams.ListTeamParam false "国家查询和显示模式"
// @Resource Teams
// @Router /teams [post]
// @Success 200 {object} model.TeamSerializer
func TeamListHandler(c *gin.Context) {

	var param ListTeamParam

	if err := c.ShouldBindJSON(&param); err != nil {
		c.AbortWithError(400, ErrorTeamParam)
		return
	}

	var teams []model.Team

	if param.TeamName != "" {
		if dbError := initiator.POSTGRES.Where("team_name LIKE ?", fmt.Sprintf("%%%s%%", param.TeamName)).Find(&teams).Error; dbError != nil {
			c.AbortWithError(404, ErrorTeam)
			return
		}
	}

	if param.Return == "true" {
		if dbError := initiator.POSTGRES.Find(&teams).Error; dbError != nil {
			c.AbortWithError(404, ErrorTeam)
			return
		}
	}

	result := make([]model.TeamSerializer, len(teams))
	for index, team := range teams {
		result[index] = team.Serializer()

	}
	c.JSON(
		http.StatusOK,
		result,
	)

}

// @Summary 根据球队ID搜索球队
// @Accept json
// @Tags Teams
// @Security Bearer
// @Produce  json
// @Param id path string true "team id"
// @Resource Teams
// @Router /teams/{id} [get]
// @Success 200 {object} model.TeamSerializer
func TeamHandler(c *gin.Context) {
	id := c.Param("teamID")

	number, _ := strconv.Atoi(id)

	if number <= 0 || number > 32 {
		c.AbortWithError(400, ErrorTeamId)
		return
	}

	var team model.Team
	if dbError := initiator.POSTGRES.Where("id = ?", id).First(&team).Error; dbError != nil {
		c.AbortWithError(400, ErrorTeam)
		return
	}

	c.JSON(200, team.Serializer())

}
