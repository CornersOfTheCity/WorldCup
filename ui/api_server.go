package api_server

import (
	_ "WorldCup.Practise/WordCup/docs"
	"WorldCup.Practise/WordCup/infra/crypt"
	"WorldCup.Practise/WordCup/ui/api-server/admins"
	"WorldCup.Practise/WordCup/ui/api-server/awards"
	"WorldCup.Practise/WordCup/ui/api-server/classic"
	"WorldCup.Practise/WordCup/ui/api-server/coaches"
	"WorldCup.Practise/WordCup/ui/api-server/groups"
	"WorldCup.Practise/WordCup/ui/api-server/jwt"
	"WorldCup.Practise/WordCup/ui/api-server/matches"
	"WorldCup.Practise/WordCup/ui/api-server/players"
	"WorldCup.Practise/WordCup/ui/api-server/statistics"
	"WorldCup.Practise/WordCup/ui/api-server/teams"
	"fmt"
	"github.com/gin-gonic/gin"
	ginSwagger "github.com/swaggo/gin-swagger"
	"github.com/swaggo/gin-swagger/swaggerFiles"
	"net/http"
)

type APIServer struct {
	engine *gin.Engine
}

type Welcome struct {
	Greet string `json:"greet" binding:"required"`
	Words string `json:"words" binding:"required"`
}

//初始化APIServer
func APIServerInit(r *gin.Engine) {
	// 添加文档路由
	r.GET("/docs/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))

	r.POST("/welcome", func(context *gin.Context) {
		var welcome Welcome
		if err := context.ShouldBindJSON(&welcome); err == nil {
			if welcome.Greet == "WorldCup" && welcome.Words == "Hello World" {
				context.SecureJSON(
					http.StatusOK,
					gin.H{
						"status": fmt.Sprintf("%s : %s", welcome.Words, welcome.Greet),
					},
				)
			} else {
				context.JSON(
					http.StatusAccepted,
					gin.H{
						"err": err.Error(),
					},
				)
			}
		}
	})

	//允许跨域访问
	r.Use(crypt.Cors())

	v1 := r.Group("/v1/api")
	indexRegistry(v1)
	adminsRegistry(v1)

	//awardsRegistry(v1)

	matchesRegistry(v1)
	groupsRegistry(v1)
	playerRegistry(v1)
	coachesRegistry(v1)
	statisticsRegistry(v1)
	awardsRegistry(v1)
	classicRegistry(v1)
	teamsRegistry(v1)

	//使用中间件进行验证
	v1.Use(jwt.JWTAuthMiddleware())
	{
		//matchesRegistry(v1)
		//groupsRegistry(v1)
		//playerRegistry(v1)
		//coachesRegistry(v1)
		//statisticsRegistry(v1)
		//awardsRegistry(v1)
		//classicRegistry(v1)
		//teamsRegistry(v1)

	}
}

//测试
func indexRegistry(r *gin.RouterGroup) {
	r.GET("", HelloWorld)
}

func HelloWorld(c *gin.Context) {
	c.JSON(
		http.StatusOK,
		gin.H{
			"message": "Hello World! FIFA world Cup 2018"},
	)
}

//注册登陆路由
func adminsRegistry(r *gin.RouterGroup) {
	r.POST("/admins/sign_in", admins.SignIn)
	r.POST("/admins/sign_up", admins.SignUp)

}

//奖项相关路由
func awardsRegistry(r *gin.RouterGroup) {
	r.POST("/awards", awards.ShowAllAwardHandler)
	r.POST("/awards/info", awards.ShowAwardHandler)
}

func classicRegistry(r *gin.RouterGroup) {
	r.GET("/classic/:year", classic.ShowClassicHandler)
	r.POST("/classic", classic.ShowAllClassicHandler)
}

//奖项记录相关
func coachesRegistry(r *gin.RouterGroup) {
	r.POST("/coaches", coaches.ShowAllCoachHandler)
	r.GET("/coaches/:coachID", coaches.ShowCoachHandler)
}

//队伍相关
func groupsRegistry(r *gin.RouterGroup) {
	r.GET("/groups/:groupID", groups.GroupPhaseHandler)
	r.POST("/groups", groups.ListGroupPhaseHandler)

}

//比赛相关
func matchesRegistry(r *gin.RouterGroup) {
	r.GET("/matches/:matchID", matches.MatchHandler)
	r.GET("/matches", matches.ListMatchHandler)

}

//球员相关
func playerRegistry(r *gin.RouterGroup) {
	r.POST("/players", players.ShowAllPlayersHandler)
	r.GET("/players/:playerID", players.ShowPlayersHandler)
}

func statisticsRegistry(r *gin.RouterGroup) {
	r.GET("/statistics/players/goals/:rank", statistics.ShowPlayerGoalHandler)
	r.GET("/statistics/players/goals", statistics.ShowPlayerGoalSearchHandler)
	r.GET("/statistics/players/saves/:rank", statistics.ShowPlayerTopHandler)
	r.GET("/statistics/players/saves", statistics.ShowPlayerTopSearchHandler)
	r.GET("/statistics/players/shots/:rank", statistics.ShowPlayerShotHandler)
	r.GET("/statistics/players/shots", statistics.ShowPlayerShotSearchHandler)
	r.GET("/statistics/players/disciplinary/:rank", statistics.ShowPlayerDisciplinaryHandler)
	r.GET("/statistics/players/disciplinary", statistics.ShowPlayerDisciplinarySearchHandler)
	r.GET("/statistics/teams/goals/:rank", statistics.ShowTeamGoalHandler)
	r.GET("/statistics/teams/goals", statistics.ShowTeamGoalSearchHandler)
	r.GET("/statistics/teams/attempts/:rank", statistics.ShowTeamAttemptsHandler)
	r.GET("/statistics/teams/attempts", statistics.ShowTeamAttemptsSearchHandler)
	r.GET("/statistics/teams/disciplinary/:rank", statistics.ShowTeamDisciplinaryHandler)
	r.GET("/statistics/teams/disciplinary", statistics.ShowTeamDisciplinarySearchHandler)
}

//队伍相关
func teamsRegistry(r *gin.RouterGroup) {
	r.POST("/teams", teams.TeamListHandler)
	r.GET("/teams/:teamID", teams.TeamHandler)
}

//默认模式
func New() *APIServer {
	return &APIServer{
		engine: gin.Default(),
	}
}

//端口设置为5000
func (a *APIServer) Start() {
	a.registry()
	a.engine.Run(":5000")
}

func (a *APIServer) registry() {
	APIServerInit(a.engine)
}
