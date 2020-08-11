package domain

import (
	"WorldCup.Practise/WordCup/infra/adapter"
	initiator "WorldCup.Practise/WordCup/infra/init"
	"WorldCup.Practise/WordCup/infra/model"
	"fmt"
	"github.com/PuerkitoBio/goquery"
	"strconv"
)

func MatchesGroupPhase(doc *goquery.Document) error {
	doc.Find("div.fi-matchlist div.fi-mu-list a.fi-mu__link").Each(func(i int, selection *goquery.Selection) {
		matches := model.Match{}

		date := adapter.StringClear(selection.Find("div.fi-mu__info div.fi-mu__info__datetime").Text())
		matches.Date = date

		groupName := adapter.StringClear(selection.Find("div.fi-mu__info div").Eq(2).Text())
		matches.GroupName = groupName

		location := adapter.StringClear(selection.Find("div.fi-mu__info div.fi__info__location").Text())
		matches.Location = location

		countryLeft := adapter.StringClear(selection.Find("div.fi-t.fi-i--4.home div.fi-t__n").Text())
		matches.CountryLeft = countryLeft

		countryRight := adapter.StringClear(selection.Find("div.fi-mu__m div.fi-t.fi-i--4.away div.fi-t__n").Text())
		matches.CountryRight = countryRight

		score := adapter.StringClear(selection.Find("div.fi-mu__m div.fi-s-wrap div div").Eq(1).Text())
		matches.Score = score

		matchNumber := adapter.StringClear(selection.Find("div.fi-mu__info div.fi__info__matchnumber span").Eq(1).Text())
		matches.MatchNumber, _ = strconv.Atoi(matchNumber)

		//fmt.Println(date, groupName, location, countryLeft, countryRight, score, matchNumber)

		fmt.Println(matches)
		initiator.POSTGRES.Create(&matches)

	})
	return nil
}
