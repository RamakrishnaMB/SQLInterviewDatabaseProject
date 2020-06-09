CREATE VIEW [dbo].[vwTotalSalesByProduct]
	WITH SchemaBinding
AS
SELECT Name,
	SUM(ISNULL((QuantitySold * UnitPrice), 0)) AS TotalSales,
	COUNT_BIG(*) AS TotalTransactions
FROM dbo.tblProductSales
JOIN dbo.tblProduct ON dbo.tblProduct.ProductId = dbo.tblProductSales.ProductId
GROUP BY Name