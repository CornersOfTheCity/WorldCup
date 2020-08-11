package domain

import (
	"WorldCup.Practise/WordCup/infra/adapter"
	initiator "WorldCup.Practise/WordCup/infra/init"
	"WorldCup.Practise/WordCup/infra/model"
	"errors"
	"fmt"
	"github.com/PuerkitoBio/goquery"
)

var (
	ErrorTeamFlag = errors.New("get team flag fail")
)

func Teams(doc *goquery.Document) error {

	var err error
	count := 0
	doc.Find("div.fi-teams-list div a").Each(func(i int, selection *goquery.Selection) {
		team := model.Team{}
		imageSrc, ok := selection.Find("div.fi-team-card__flag img").Attr("src")
		if ok != true {
			err = ErrorTeamFlag
			return
		}
		team.Flag = imageSrc
		teamName := adapter.StringClear(selection.Find("div.fi-team-card__info div.fi-team-card__name").Text())
		team.Name = teamName

		fmt.Println(team)
		count++
		initiator.POSTGRES.Create(&team)
	})
	fmt.Println(count)
	return err

}
