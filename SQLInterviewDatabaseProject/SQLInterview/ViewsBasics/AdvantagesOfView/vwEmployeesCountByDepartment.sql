--Views can be used to present only aggregated data and hide detailed data.

CREATE VIEW [dbo].[vwEmployeesCountByDepartment]
AS
SELECT DeptName, COUNT(Id) AS TotalEmployees
FROM tblEmployee
JOIN tblDepartment ON tblEmployee.DepartmentId = tblDepartment.DeptId
GROUP BY DeptName
