package db

import (
	"log"
	"os"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

type DbInstance struct {
	Db *gorm.DB
}

var Database DbInstance

func ConnectDb() {
	dsn := "root:@tcp(127.0.0.1:3306)/idr?charset=utf8mb4&parseTime=True&loc=Local"
	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{
		SkipDefaultTransaction:                   false,
		DisableForeignKeyConstraintWhenMigrating: true,
	})

	if err != nil {
		log.Fatal("Failed to connect to database", err.Error())
		os.Exit(2)
	}

	log.Println("Connection Successful")
	db.Logger = logger.Default.LogMode(logger.Info)
	log.Println("Running Migrations")

	Database = DbInstance{Db: db}
}
