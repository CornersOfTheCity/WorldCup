package main

import (
	"WorldCup.Practise/WordCup/domain"
	"WorldCup.Practise/WordCup/infra/config"
	"WorldCup.Practise/WordCup/infra/download"
	initiator "WorldCup.Practise/WordCup/infra/init"
	"WorldCup.Practise/WordCup/infra/model"
	api_server "WorldCup.Practise/WordCup/ui"
)

// @title WorldCup API
// @version 1.6.7
// @description This is a server for WorldCup.

// @contact.name API Support
// @contact.email 18892207018@163.com

// @license.name Apache 2.0
// @license.url http://www.apache.org/licenses/LICENSE-2.0.html

// @host 127.0.0.1:5000
// @BasePath /v1/api

// @securityDefinitions.apiKey Bearer
// @type apiKey
// @in header
// @name Authorization
func main() {

	// 通过gorm自动创建数据表
	StartTable()
	defer initiator.POSTGRES.Close()

	//将网页抓取的数据放入到数据库中
	//PushDataIntoDB()

	//启动服务器
	api_server.New().Start()
}

/*
		Summary 接口概要说明
		Description 接口详细描述信息
		Tags 用户信息   //swagger API分类标签, 同一个tag为一组
		accept json  //浏览器可处理数据类型，浏览器默认发 Accept: /
	    Produce  json  //设置返回数据的类型和编码
	    Param id path int true "ID"    //url参数：（name；参数类型[query(?id=),path(/123)]；数据类型；required；参数描述）
	    Param name query string false "name"
	    Success 200 {object} Res {"code":200,"data":null,"msg":""}  //成功返回的数据结构， 最后是示例
	    Failure 400 {object} Res {"code":200,"data":null,"msg":""}
	    Router /test/{id} [get]    //路由信息，一定要写上
*/

//根据struct tag自动更新数据库结构
func StartTable() {
	initiator.POSTGRES.AutoMigrate(
		&model.Match{},
		&model.Award{},
		&model.Coach{},
		&model.Group{},
		&model.Team{},
		&model.Player{},
		&model.WorldCupArchive{},
		&model.TeamStatisticWithTopGoal{},
		&model.TeamStatisticWithAttempts{},
		&model.TeamStatisticWithDisciplinary{},
		&model.PlayersStatisticWithGoalsScored{},
		&model.PlayersStatisticWithTopSave{},
		&model.PlayersStatisticWithShot{},
		&model.PlayersStatisticWithDisciplinary{},
		&model.Admin{},
	)
}

//将从网页抓取的数据放到数据库中
func PushDataIntoDB() {
	// 1. matches
	urlMatches := config.MatchesURLGroupPhase
	docMatches, _ := download.Downloader(urlMatches)
	//docMatches, _ := download.Downloader(urlMatches)
	domain.MatchesGroupPhase(docMatches)

	// 2. teams
	urlTeams := config.TeamsURL
	docTeams, _ := download.Downloader(urlTeams)
	domain.Teams(docTeams)

	// 3. groups

	urlGroups := config.GroupsURL
	docGroups, _ := download.Downloader(urlGroups)
	domain.Groups(docGroups)

	// 4. players

	urlPlayers := config.PlayersURLList
	docPlayers, _ := download.Downloader(urlPlayers)
	domain.Players(docPlayers)

	urlCoaches := config.CoachesURL
	docCoaches, _ := download.Downloader(urlCoaches)
	domain.Coaches(docCoaches)

	// 5. statistics
	urlTeamsTopGoals := config.StatisticsTeamGoalURL
	docTeamsTopGoals, _ := download.Downloader(urlTeamsTopGoals)
	domain.TeamsTopGoals(docTeamsTopGoals)

	urlTeamsAttempts := config.StatisticsTeamShots
	docTeamShots, _ := download.Downloader(urlTeamsAttempts)
	domain.TeamsShots(docTeamShots)

	urlTeamsDisciplinary := config.StatisticsTeamDisciplinary
	docTeamsDisciplinary, _ := download.Downloader(urlTeamsDisciplinary)
	domain.TeamsDisciplinary(docTeamsDisciplinary)

	urlPlayerGoalsScored := config.StatisticsPlayerGoalScoredURL
	docPlayerGoalsScore, _ := download.Downloader(urlPlayerGoalsScored)
	domain.PlayersGoalScored(docPlayerGoalsScore)

	urlPlayersTopSaves := config.StatisticsPlayerSaves
	docPlayersTopSaves, _ := download.Downloader(urlPlayersTopSaves)
	domain.PlayersTopSaves(docPlayersTopSaves)

	urlPlayerShot := config.StatisticsPlayerShots
	docPlayerShot, _ := download.Downloader(urlPlayerShot)
	domain.PlayersShots(docPlayerShot)

	urlPlayerDisciplinary := config.StatisticsPlayerDisciplinary
	docPlayerDisciplinary, _ := download.Downloader(urlPlayerDisciplinary)
	domain.PlayersDisciplinary(docPlayerDisciplinary)

	// 6. awards
	urlAward := config.AwardsURL
	docAward, _ := download.Downloader(urlAward)
	domain.Awards(docAward)
	//
	// 7. classic
	urlClassic := config.HistoryURL
	docClassic, _ := download.Downloader(urlClassic)
	domain.Histories(docClassic)
}
