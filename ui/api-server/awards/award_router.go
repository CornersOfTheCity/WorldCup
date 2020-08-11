package awards

import (
	initiator "WorldCup.Practise/WordCup/infra/init"
	"WorldCup.Practise/WordCup/infra/model"
	"errors"
	"fmt"
	"github.com/gin-gonic/gin"
	"net/http"
)

var (
	ErrorAwardParam = errors.New("award param is not correct")
)

type ListAwardInfoParam struct {
	Info string `json:"info" binding:"required" example:"2014"`
}

// @Summary 根据奖项内容模糊查询
// @Tags Awards
// @Security Bearer
// @Accept  json
// @Produce  json
// @Param award body awards.ListAwardInfoParam true "根据奖项信息模糊搜寻"
// @Success 200 {object} model.AwardSerializer
// @Router /awards/info [post]
func ShowAwardHandler(ctx *gin.Context) {

	//infoLike := ctx.Request.PostFormValue("info")
	//infoLikeOne := ctx.Request.FormValue("info")
	//infoLikeTwo := ctx.Params.ByName("info")
	//infoLikeThree := ctx.Param("info")
	//fmt.Printf("infoLike:%s,infoLikeOne:%s,infoLikeTwo:%s,infoLikeThree:%s", infoLike, infoLikeOne, infoLikeTwo, infoLikeThree)
	var param ListAwardInfoParam
	if err := ctx.ShouldBindJSON(&param); err != nil {
		ctx.AbortWithError(400, ErrorAwardParam)
		return
	}

	var award model.Award
	if dbError := initiator.POSTGRES.Where("info LIKE ?", fmt.Sprintf("%%%s%%", param.Info)).First(&award).Error; dbError != nil {
		ctx.AbortWithError(400, dbError)
		return
	}
	ctx.JSON(http.StatusOK, award.Serializer())
}

//type ListAwardParam struct {
//	Search string `form:"search"`
//	Return string `form:"return"`
//}

type ListAwardParam struct {
	Search     string `json:"search" binding:"required" example:"adidas Golden Boot Award"`
	ReturnMode string `json:"returnMode" binding:"required" example:"all_list"`
}

// @Summary 列出奖项
// @Accept json
// @Tags Awards
// @Security Bearer
// @Produce json
// @Param award body awards.ListAwardParam false "根据奖项名称搜寻和显示模式"
// @Resource Awards
// @Router /awards [post]
// @Success 200 {object} model.AwardSerializer
func ShowAllAwardHandler(ctx *gin.Context) {
	//search := ctx.Request.PostFormValue("search")
	//returns := ctx.Request.PostFormValue("return")
	//fmt.Printf("Search:%s,return%s:\n", search, returns)

	var param ListAwardParam
	if err := ctx.ShouldBindJSON(&param); err != nil {
		ctx.AbortWithError(400, ErrorAwardParam)
		return
	}

	var awards []model.Award
	if param.Search != "" {
		if dbError := initiator.POSTGRES.Where("award_name LIKE ?", fmt.Sprintf("%%%s%%", param.Search)).Find(&awards).Error; dbError != nil {
			ctx.AbortWithError(400, dbError)
			return
		}
	}

	if param.ReturnMode == "all_list" {
		if dbError := initiator.POSTGRES.Find(&awards).Error; dbError != nil {
			ctx.AbortWithError(400, dbError)
			return
		}
	}

	var result = make([]model.AwardSerializer, len(awards))

	for index, award := range awards {
		result[index] = award.Serializer()
	}
	ctx.JSON(http.StatusOK, result)
}
