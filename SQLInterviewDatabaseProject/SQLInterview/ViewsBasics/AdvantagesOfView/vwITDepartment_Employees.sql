--Views can be used as a mechanism to implement row and column level security.Row Level Security

CREATE VIEW [dbo].[vwITDepartment_Employees]
AS
SELECT Id, Name, Salary, Gender, DeptName
FROM tblEmployee
JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.DeptId
WHERE tblDepartment.DeptName = 'IT'