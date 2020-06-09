--To run view 
select * from vwEmployeesDataExceptSalary

select * from tblEmployee


--Is it possible to Insert, Update and delete rows, from the underlying tblEmployees table, using view vWEmployeesDataExceptSalary?
--Yes, SQL server views are updateable.
Update vwEmployeesDataExceptSalary 
Set Name = 'Ramakrishna' Where Id = 2

--Along the same lines, it is also possible to insert and delete rows from the base table using views.
Delete from vWEmployeesDataExceptSalary where Id = 2
Insert into vWEmployeesDataExceptSalary values (7, 'Mikey', 'Male', 2)

--Now, let us see, what happens if our view is based on multiple base tables. For this purpose,
--let's create tblDepartment table and populate with some sample data.

Select * from vwEmployeeDetailsByDepartment