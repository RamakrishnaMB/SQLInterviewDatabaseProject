DECLARE @countEmp INT
SET @countEmp = (SELECT count(*) FROM tblEmployee)
IF (@countEmp = 0)
BEGIN
	INSERT INTO tblEmployee VALUES (1, 'John', 5000, 'Male', 3)
	INSERT INTO tblEmployee VALUES (2, 'Mike', 3400, 'Male', 2)
	INSERT INTO tblEmployee VALUES (3, 'Pam', 6000, 'Female', 1)
	INSERT INTO tblEmployee VALUES (4, 'Todd', 4800, 'Male', 4)
	INSERT INTO tblEmployee VALUES (5, 'Sara', 3200, 'Female', 1)
	INSERT INTO tblEmployee VALUES (6, 'Ben', 4800, 'Male', 3)
END

GO

DECLARE @countDept INT
SET @countDept = (SELECT count(*) FROM tblDepartment)
IF (@countDept = 0)
BEGIN
	INSERT INTO tblDepartment VALUES (1, 'IT')
	INSERT INTO tblDepartment VALUES (2, 'Payroll')
	INSERT INTO tblDepartment VALUES (3, 'HR')
	INSERT INTO tblDepartment VALUES (4, 'Admin')
END

GO

---Index view script

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