package players

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
	ErrorPlayerId    = errors.New("player id not allow")
	ErrorPlayerParam = errors.New("player param is not correct")
)

// @Summary 根据ID搜索队员
// @Accept json
// @Tags Players
// @Security Bearer
// @Produce  json
// @Param id path string true "ID"
// @Resource Players
// @Router /players/{id} [get]
// @Success 200 {object} model.PlaySerializer
func ShowPlayersHandler(ctx *gin.Context) {
	id := ctx.Param("playerID")
	number, _ := strconv.Atoi(id)

	if number > 736 || number < 0 {
		ctx.AbortWithError(400, ErrorPlayerId)
		return
	}

	var player model.Player

	if dbError := initiator.POSTGRES.Where("id = ?", id).Find(&player).Error; dbError != nil {
		ctx.AbortWithError(400, dbError)
		return
	}

	ctx.JSON(http.StatusOK, player.Serializer())

}

type ListPlayerParam struct {
	Name       string `json:"name" binding:"required" example:"Aaron MOOY"`
	ReturnMode string `json:"returnMode" binding:"required" example:"true"`
	Country    string `json:"country" binding:"required" example:"Australia"`
	Role       string `json:"role" binding:"required" example:"Midfielder"`
	Number     string `json:"number" binding:"required" example:"13"`
}

// @Summary 根据球员姓名、国家、编号、角色搜索球员
// @Accept json
// @Tags Players
// @Security Bearer
// @Produce  json
// @Param group body players.ListPlayerParam false "球员姓名、国家、编号、角色搜索球员"
// @Resource Players
// @Router /players [post]
// @Success 200 {object} model.PlaySerializer
func ShowAllPlayersHandler(c *gin.Context) {

	var param ListPlayerParam
	if err := c.ShouldBindJSON(&param); err != nil {
		c.AbortWithError(400, ErrorPlayerParam)
		return
	}

	var players []model.Player

	if param.Name != "" {
		if dbError := initiator.POSTGRES.Where("name LIKE ?", fmt.Sprintf("%%%s%%", param.Name)).Find(&players).Error; dbError != nil {
			c.AbortWithError(400, dbError)
			return
		}
	}

	if param.ReturnMode == "true" {
		if dbError := initiator.POSTGRES.Find(&players).Error; dbError != nil {
			c.AbortWithError(400, dbError)
			return
		}
	}

	if param.Number != "" {
		if dbError := initiator.POSTGRES.Where("number = ?", param.Number).Find(&players).Error; dbError != nil {
			c.AbortWithError(400, dbError)
			return
		}
	}

	if param.Role != "" {
		if dbError := initiator.POSTGRES.Where("role = ?", param.Role).Find(&players).Error; dbError != nil {
			c.AbortWithError(400, dbError)
			return
		}
	}

	if param.Country != "" {
		if dbError := initiator.POSTGRES.Where("country LIKE ?", fmt.Sprintf("%%%s%%", param.Country)).Find(&players).Error; dbError != nil {
			c.AbortWithError(400, dbError)
			return
		}
	}

	var result = make([]model.PlaySerializer, len(players))

	for index, player := range players {
		result[index] = player.Serializer()
	}

	c.JSON(http.StatusOK, result)
}
