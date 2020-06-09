DECLARE @countProd INT
SET @countProd = (SELECT count(*) FROM tblProduct)
IF (@countProd = 0)
BEGIN
	INSERT INTO tblProduct VALUES (1, 'Books', 20)
	INSERT INTO tblProduct VALUES (2, 'Pens', 14)
	INSERT INTO tblProduct VALUES (3, 'Pencils', 11)
	INSERT INTO tblProduct VALUES (4, 'Clips', 10)
END
GO
DECLARE @countProdSales INT
SET @countProdSales = (SELECT count(*) FROM tblProductSales)
IF (@countProdSales = 0)
BEGIN
	INSERT INTO tblProductSales VALUES (1, 10)
	INSERT INTO tblProductSales VALUES (3, 23)
	INSERT INTO tblProductSales VALUES (4, 21)
	INSERT INTO tblProductSales VALUES (2, 12)
	INSERT INTO tblProductSales VALUES (1, 13)
	INSERT INTO tblProductSales VALUES (3, 12)
	INSERT INTO tblProductSales VALUES (4, 13)
	INSERT INTO tblProductSales VALUES (1, 11)
	INSERT INTO tblProductSales VALUES (2, 12)
	INSERT INTO tblProductSales VALUES (1, 14)
END