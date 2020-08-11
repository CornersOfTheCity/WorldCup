package config

import (
	"fmt"
	"github.com/spf13/viper"
)

//各个网页路径
var (
	MatchesURLGroupPhase          = "https://www.fifa.com/worldcup/matches/?#groupphase"
	MatchesURLKnockOutPhase       = "https://www.fifa.com/worldcup/matches/?#knockoutphase"
	TeamsURL                      = "https://www.fifa.com/worldcup/teams/"
	GroupsURL                     = "https://www.fifa.com/worldcup/groups/"
	PlayersURL                    = "https://www.fifa.com/worldcup/players/browser/"
	PlayersURLList                = "https://www.fifa.com/worldcup/players/_libraries/byposition/all/_players-list"
	CoachesURL                    = "https://www.fifa.com/worldcup/players/coaches/"
	StatisticsURL                 = "https://www.fifa.com/worldcup/statistics/"
	StatisticsTeamGoalURL         = "https://www.fifa.com/worldcup/statistics/teams/goal-scored"
	StatisticsTeamShots           = "https://www.fifa.com/worldcup/statistics/teams/shots"
	StatisticsTeamDisciplinary    = "https://www.fifa.com/worldcup/statistics/teams/disciplinary"
	StatisticsPlayerGoalScoredURL = "https://www.fifa.com/worldcup/statistics/players/goal-scored"
	StatisticsPlayerSaves         = "https://www.fifa.com/worldcup/statistics/players/saves"
	StatisticsPlayerShots         = "https://www.fifa.com/worldcup/statistics/players/shots"
	StatisticsPlayerDisciplinary  = "https://www.fifa.com/worldcup/statistics/players/disciplinary"
	AwardsURL                     = "https://www.fifa.com/worldcup/awards/"
	HistoryURL                    = "https://www.fifa.com/worldcup/classic/"
)

//FIFA网站
var RootURL = "https://www.fifa.com"

//初始化viper读操作
func init() {
	viper.SetConfigName("settings")
	viper.AddConfigPath("$GOPATH/src/WorldCup/infra/config")
	viper.SetConfigType("yml")
	err := viper.ReadInConfig()
	if err != nil {
		panic(fmt.Errorf("Fatal error config file: %s \n", err))
	}
}

//浏览器安装位置
var ChromeDriverPath = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

//获取数据库配置信息
func GetPostGreConfig() string {
	host := viper.GetString("datasource.host")
	port := viper.GetInt("datasource.port")
	username := viper.GetString("datasource.username")
	database := viper.GetString("datasource.database")
	password := viper.GetInt("datasource.password")
	charset := viper.GetString("datasource.charset")
	return fmt.Sprintf("%s:%d@tcp(%s:%d)/%s?charset=%s&parseTime=true",
		username,
		password,
		host,
		port,
		database,
		charset)
}
