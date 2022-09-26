package models

type Product struct {
	ProductCode   string `json:"productCode" gorm:"column:ProductCode"`
	ProductName   string `json:"productName" gorm:"column:ProductName"`
	SubCategory   string `json:"subCategory" gorm:"column:SubCategory"`
	Brand         string `json:"brand" gorm:"column:Brand"`
	RetailPrice   int    `json:"retailPrice" gorm:"column:RetailPrice"`
	ProductStatus string `json:"productStatus" gorm:"column:ProductStatus"`
}

func (Product) TableName() string {
	return "products"
}
