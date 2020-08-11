package initiator

import (
	"WorldCup.Practise/WordCup/infra/config"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"github.com/jinzhu/gorm"
	"github.com/spf13/viper"
)

var POSTGRES *gorm.DB

func init() {
	connectString := config.GetPostGreConfig()
	fmt.Println(connectString)
	driverName := viper.GetString("datasource.driverName")
	connect, err := gorm.Open(
		driverName,
		connectString,
	)
	connect.LogMode(true)
	if err != nil {
		fmt.Println(err)
		panic("connect postgres failed")
	}
	fmt.Println("Login mysql database success!")
	POSTGRES = connect

}
