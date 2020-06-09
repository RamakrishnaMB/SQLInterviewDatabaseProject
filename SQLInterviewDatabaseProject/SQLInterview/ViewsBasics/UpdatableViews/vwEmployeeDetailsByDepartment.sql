CREATE VIEW vwEmployeeDetailsByDepartment
AS
SELECT Id, Name, Salary, Gender, DeptName
FROM tblEmployee
JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.DeptId