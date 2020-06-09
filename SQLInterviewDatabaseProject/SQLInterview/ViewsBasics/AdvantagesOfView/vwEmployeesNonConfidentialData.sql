--Column Level Security:

CREATE VIEW [dbo].[vwEmployeesNonConfidentialData]
AS
SELECT Id, Name, Gender, DeptName
FROM tblEmployee
JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.DeptId