package domain

import (
	"WorldCup.Practise/WordCup/infra/config"
	"WorldCup.Practise/WordCup/infra/download"
	"github.com/PuerkitoBio/goquery"
	"testing"
)

func TestTeams(t *testing.T) {
	docTemp, _ := download.Downloader(config.TeamsURL)

	tests := []struct {
		doc *goquery.Document
	}{
		{
			doc: docTemp,
		},
	}

	for _, test := range tests {
		Teams(test.doc)
	}
}
