package main

import (
	"IDRTEST/db"
	"IDRTEST/routes"
	"log"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/cors"
)

func welcome(c *fiber.Ctx) error {
	return c.SendString("Welcome to IDR API")
}

func setupRoutes(app *fiber.App) {
	app.Get("/api", welcome)
	app.Get("/api/products", routes.GetAllProducts)
	app.Post("/api/products", routes.CreateProduct)
	app.Get("/api/products/:ProductCode", routes.GetProduct)
	app.Put("/api/products/:ProductCode", routes.UpdateMenu)
	app.Delete("/api/products/:ProductCode", routes.DeleteProduct)
	app.Get("/api/productpage/:pageSize/:page", routes.Pagination)
}

func main() {
	db.ConnectDb()
	app := fiber.New()
	app.Use(cors.New(cors.Config{
		AllowOrigins: "http://localhost:3000",
		AllowHeaders: "Origin, Content-Type, Accept",
	}))
	setupRoutes(app)

	log.Fatal(app.Listen(":9000"))
}
