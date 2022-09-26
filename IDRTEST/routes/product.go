package routes

import (
	"IDRTEST/db"
	"IDRTEST/models"

	"github.com/gofiber/fiber/v2"
)

type Product struct {
	ProductCode   string `json:"productCode"`
	ProductName   string `json:"productName"`
	SubCategory   string `json:"subCategory"`
	Brand         string `json:"brand"`
	RetailPrice   int    `json:"retailPrice"`
	ProductStatus string `json:"productStatus"`
}

func CreateResponseProduct(productModel models.Product) Product {
	return Product{
		ProductCode:   productModel.ProductCode,
		ProductName:   productModel.ProductName,
		SubCategory:   productModel.SubCategory,
		Brand:         productModel.Brand,
		RetailPrice:   productModel.RetailPrice,
		ProductStatus: productModel.ProductStatus,
	}
}

func CreateProduct(c *fiber.Ctx) error {
	var product models.Product
	if err := c.BodyParser(&product); err != nil {
		return c.Status(400).JSON(err.Error())
	}

	db.Database.Db.Create(&product)
	responseProduct := CreateResponseProduct(product)

	return c.Status(200).JSON(responseProduct)
}

func GetAllProducts(c *fiber.Ctx) error {
	products := []models.Product{}

	db.Database.Db.Find(&products)
	responseProducts := []Product{}

	for _, product := range products {
		responseProduct := CreateResponseProduct(product)
		responseProducts = append(responseProducts, responseProduct)
	}

	return c.Status(200).JSON(responseProducts)
}

func findProduct(ProductCode string, product *models.Product) error {
	db.Database.Db.Where("ProductCode LIKE ?", ProductCode).Find(&product)
	return nil
}

func GetProduct(c *fiber.Ctx) error {
	code := c.Params("ProductCode")

	var product models.Product

	if err := findProduct(code, &product); err != nil {
		return c.Status(400).JSON(err.Error())
	}

	pcode := product.ProductCode

	if pcode == "" {
		return c.SendString("Product doesn't exist")
	}

	responseProduct := CreateResponseProduct(product)

	return c.Status(200).JSON(responseProduct)
}

func UpdateMenu(c *fiber.Ctx) error {
	code := c.Params("ProductCode")

	var product models.Product

	if err := findProduct(code, &product); err != nil {
		c.Status(400).JSON(err.Error())
	}

	pcode := product.ProductCode

	if pcode == "" {
		return c.SendString("Product doesn't exist")
	}

	type UpdateProduct struct {
		ProductCode   string `json:"productCode"`
		ProductName   string `json:"productName"`
		SubCategory   string `json:"subCategory"`
		Brand         string `json:"brand"`
		RetailPrice   int    `json:"retailPrice"`
		ProductStatus string `json:"productStatus"`
	}

	var updateData UpdateProduct

	if err := c.BodyParser(&updateData); err != nil {
		return c.Status(500).JSON(err.Error())
	}

	product.ProductCode = updateData.ProductCode
	product.ProductName = updateData.ProductName
	product.SubCategory = updateData.SubCategory
	product.Brand = updateData.Brand
	product.RetailPrice = updateData.RetailPrice
	product.ProductStatus = updateData.ProductStatus

	db.Database.Db.Save(&product)

	responseProduct := CreateResponseProduct(product)
	return c.Status(200).JSON(responseProduct)
}

func DeleteProduct(c *fiber.Ctx) error {
	code := c.Params("ProductCode")

	var product models.Product

	if err := findProduct(code, &product); err != nil {
		c.Status(400).JSON(err.Error())
	}

	if err := db.Database.Db.Delete(&product).Error; err != nil {
		return c.Status(404).JSON(err.Error())
	}

	return c.Status(200).SendString("deleted")
}

func Pagination(c *fiber.Ctx) error {
	page, err := c.ParamsInt("page")

	if page == 0 {
		page = 1
	}

	if err != nil {
		return c.Status(400).JSON(err.Error())
	}

	pageSize, _ := c.ParamsInt("pageSize")

	offset := (page - 1) * pageSize

	products := []models.Product{}
	db.Database.Db.Offset(offset).Limit(pageSize).Find(&products)
	responseProducts := []Product{}

	for _, product := range products {
		responseProduct := CreateResponseProduct(product)
		responseProducts = append(responseProducts, responseProduct)
	}

	return c.Status(200).JSON(responseProducts)
}
