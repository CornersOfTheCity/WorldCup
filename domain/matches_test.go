package domain

import (
	"WorldCup.Practise/WordCup/infra/config"
	"WorldCup.Practise/WordCup/infra/download"
	"github.com/PuerkitoBio/goquery"
	"testing"
)

func TestMatchesGroupPhase(t *testing.T) {
	docTemp, _ := dowmload.Downloader(config.MatchesURLGroupPhase)
	tests := []struct {
		doc *goquery.Document
	}{
		{
			doc: docTemp,
		},
	}

	for _, test := range tests {
		MatchesGroupPhase(test.doc)
	}
}
