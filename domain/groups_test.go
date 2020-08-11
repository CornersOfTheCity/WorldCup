package domain

import (
	"WorldCup.Practise/WordCup/infra/config"
	"WorldCup.Practise/WordCup/infra/download"
	"github.com/PuerkitoBio/goquery"
	"testing"
)

func TestGroups(t *testing.T) {
	doc, _ := download.Downloader(config.GroupsURL)
	tests := []struct {
		doc *goquery.Document
	}{
		{
			doc: doc,
		},
	}

	for _, test := range tests {
		Groups(test.doc)
	}
}
