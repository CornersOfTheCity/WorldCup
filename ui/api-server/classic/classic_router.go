package classic

import (
	initiator "WorldCup.Practise/WordCup/infra/init"
	"WorldCup.Practise/WordCup/infra/model"
	"errors"
	"fmt"
	"github.com/gin-gonic/gin"
	"net/http"
)

var (
	ErrorClassicParam = errors.New("classic param is not correct")
)

// @Summary 根据年份查询
// @Accept json
// @Tags Classic
// @Security Bearer
// @Produce  json
// @Param year path string true "根据年份搜索记录"
// @Resource Classic
// @Router /classic/{year} [get]
// @Success 200 {object} model.WorldCupArchiveSerializer
func ShowClassicHandler(ctx *gin.Context) {
	year := ctx.Param("year")
	var classic model.WorldCupArchive
	if dbError := initiator.POSTGRES.Where("year = ?", year).First(&classic).Error; dbError != nil {
		ctx.AbortWithError(400, dbError)
		return
	}

	ctx.JSON(http.StatusOK, classic.Serializer())
}

type ListClassicParam struct {
	Search  string `json:"search" binding:"required" example:"Italy"`
	Modes   string `json:"modes" binding:"required" example:"all_list"`
	Country string `json:"country" binding:"required" example:"Italy"`
	Title   string `json:"title" binding:"required" example:"1954"`
}

// ShowAllClassicHandler will list history
// @Summary 根据结果、国家等查询
// @Accept json
// @Tags Classic
// @Security Bearer
// @Produce  json
// @Param classic body classic.ListClassicParam false "片段搜索 模糊查询"
// @Resource Classic
// @Router /classic [post]
// @Success 200 {object} model.WorldCupArchiveSerializer
func ShowAllClassicHandler(ctx *gin.Context) {
	var param ListClassicParam
	if err := ctx.ShouldBindJSON(&param); err != nil {
		ctx.AbortWithError(400, ErrorClassicParam)
		return
	}

	var classics []model.WorldCupArchive
	if param.Search != "" {
		if dbError := initiator.POSTGRES.Where("final_result LIKE ?", fmt.Sprintf("%%%s%%", param.Search)).Find(&classics).Error; dbError != nil {
			ctx.AbortWithError(400, dbError)
			return
		}
	}

	if param.Modes == "all_list" {
		if dbError := initiator.POSTGRES.Find(&classics).Error; dbError != nil {
			ctx.AbortWithError(400, dbError)
			return
		}
	}

	if param.Country != "" {
		if dbError := initiator.POSTGRES.Where("country_name LIKE ?", fmt.Sprintf("%%%s%%", param.Country)).Find(&classics).Error; dbError != nil {
			ctx.AbortWithError(400, dbError)
			return
		}
	}

	if param.Title != "" {
		if dbError := initiator.POSTGRES.Where("title LIKE ?", fmt.Sprintf("%%%s%%", param.Title)).Find(&classics).Error; dbError != nil {
			ctx.AbortWithError(400, dbError)
			return
		}
	}

	var result = make([]model.WorldCupArchiveSerializer, len(classics))

	for index, archive := range classics {
		result[index] = archive.Serializer()
	}

	ctx.JSON(http.StatusOK, result)
}
