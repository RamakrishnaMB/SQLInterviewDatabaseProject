--A view is nothing more than a saved SQL query. A view can also be considered as a virtual table.

--Execute a view
SELECT * from vwEmployeesByDepartment

--To look at view definition - 
sp_helptext vwEmployeesByDepartment
--To modify a view - 
ALTER VIEW vWName 
--To Drop a view - 
DROP VIEW vWName

----- Advantages of View ------
--Views can be used as a mechanism to implement row and column level security.Row Level Security
select * from vwITDepartment_Employees

--Column Level Security:
select * from vwEmployeesNonConfidentialData

--Views can be used to present only aggregated data and hide detailed data.
select * from vwEmployeesCountByDepartment