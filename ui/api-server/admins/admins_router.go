package admins

import (
	"WorldCup.Practise/WordCup/infra/crypt"
	initiator "WorldCup.Practise/WordCup/infra/init"
	"WorldCup.Practise/WordCup/infra/model"
	"errors"
	"fmt"
	"github.com/gin-gonic/gin"
	"net/http"
)

var (
	StateAdmin = "admin"
)

var (
	ErrorAdminSignInParam = errors.New("admin sign in error")
	ErrorAdminSignName    = errors.New("name is not allow")
	ErrorAdminSignUpName  = errors.New("name is exists")
)

var (
	NameInfo = fmt.Sprintf("Please Check Name length")
)

type ListSignInParam struct {
	Data struct {
		Name     string `json:"name" binding:"required" example:"18717711819"`
		Password string `json:"password" binding:"required" example:"$2a$04$5Wu7npoNeok1xtCHXTLDk.XgNqGjZkzxhcsiOaNmBPIioxQ3LaqQS"`
	} `json:"admin" binding:"required"`
}

// SignIn will find a count
// @Summary 登陆
// @Accept json
// @Tags Admin
// @Security Bearer
// @Produce  json
// @Param admin body admins.ListSignInParam true "登陆信息"
// @Resource Admins
// @Router /admins/sign_in [post]
// @Success 200 {object} model.AdminSerializer
func SignIn(ctx *gin.Context) {

	var param ListSignInParam
	if err := ctx.ShouldBindJSON(&param); err != nil {
		ctx.JSON(400, ctx.AbortWithError(400, ErrorAdminSignInParam))
		return
	}

	// 检查用户名是否合法
	var ok bool
	ok = crypt.CheckSignInName(param.Data.Name)
	if ok != true {
		fmt.Println(NameInfo)
		return
	}

	// 检查用户是否存在
	var admin model.Admin
	if dbError := initiator.POSTGRES.Where("name = ?", param.Data.Name).First(&admin).Error; dbError != nil {
		ctx.JSON(400, ctx.AbortWithError(400, dbError))
		return
	}
	//生成Token并更新

	authToken, _ := crypt.GenToken(admin.Name)
	if dbError := initiator.POSTGRES.Model(&admin).Update("AuthToken", authToken).Error; dbError != nil {
		panic("update error")
	}

	ctx.JSON(http.StatusOK, admin.Serializer())
}

type ListSignUpParam struct {
	Data struct {
		Name     string `json:"name" binding:"required" example:"18717711819"`
		Password string `json:"password" binding:"required" example:"xxxxx"`
		Phone    string `json:"phone" binding:"required" example:"18717711819"`
	} `json:"admin" binding:"required"`
}

// SignUp will create  a count
// @Summary 注册
// @Accept json
// @Tags Admin
// @Security Bearer
// @Produce  json
// @Param admin body admins.ListSignUpParam true "注册信息"
// @Resource Admins
// @Router /admins/sign_up [post]
// @Success 200 {object} model.AdminSerializer
func SignUp(ctx *gin.Context) {

	var param ListSignUpParam

	if err := ctx.ShouldBindJSON(&param); err != nil {
		ctx.JSON(400, ctx.AbortWithError(400, ErrorAdminSignInParam))
		return
	}

	// 检查名称是否合法
	var ok bool
	if ok = crypt.CheckSignInName(param.Data.Name); ok != true {
		ctx.JSON(400, ctx.AbortWithError(400, ErrorAdminSignName))
		return
	}

	// 检查用户是否已经存在
	var admin model.Admin
	if dbError := initiator.POSTGRES.Where("name = ?", param.Data.Name).First(&admin).Error; dbError == nil {
		ctx.JSON(400, ctx.AbortWithError(400, ErrorAdminSignUpName))
		return
	}

	// 创建Token和加密密码
	var newAdmin model.Admin
	genToken, _ := crypt.GenToken(param.Data.Name)
	newAdmin = model.Admin{
		Name:              param.Data.Name,
		AuthToken:         genToken,
		EncryptedPassword: crypt.PassWordEncrypted(param.Data.Password),
		Phone:             param.Data.Phone,
		State:             StateAdmin,
	}
	if dbError := initiator.POSTGRES.Create(&newAdmin).Error; dbError != nil {
		ctx.JSON(400, ctx.AbortWithError(400, dbError))
		return
	}
	ctx.JSON(http.StatusOK, newAdmin.Serializer())
}
