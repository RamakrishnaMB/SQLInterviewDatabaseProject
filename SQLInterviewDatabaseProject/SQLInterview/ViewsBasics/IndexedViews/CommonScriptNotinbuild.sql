--What is an Indexed View or What happens when you create an Index on a view?
--A standard or Non-indexed view, is just a stored SQL query. When, we try to retrieve data from the view, the data is actually retrieved 
--from the underlying base tables. So, a view is just a virtual table it does not store any data, by default.

--However, when you create an index, on a view, the view gets materialized. This means, the view is now, capable of storing data.
--In SQL server, we call them Indexed views and in Oracle, Materialized views.
select * from tblProduct
select * from tblProductSales


select * from vwTotalSalesByProduct

-- To create index 
Create Unique Clustered Index UIX_vwTotalSalesByProduct_Name
on vwTotalSalesByProduct(Name)


-- only in Enterprise and Developer editions of SQL Server will the Query Optimizer actually
--take the index into consideration. for Other editions use 'With NOEXPAND' 

select * from vwTotalSalesByProduct with (NOEXPAND)

--Note: you can check Actual Plan in SSMS which is uing Clustered Index scan from view or going into Table scan to fetch
--data inside the view.


