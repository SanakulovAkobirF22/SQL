--Write a query that uses an alias to rename the ProductName column as Name in the Products table.
  select ProductID, ProductName as Name, * from Products

--Write a query that uses an alias to rename the Customers table as Client for easier reference.
 select * from customers
 exec sp_rename 'Customers', 'Client';
--Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted.
 select ProductName from Products
 union
 select ProductName from Products_Discounted
--Write a query to find the intersection of Products and Products_Discounted tables using INTERSECT.
 select * from Products
 intersect
 select * from Products_Discounted
--Write a query to select distinct customer names and their corresponding Country using SELECT DISTINCT.
  select distinct FirstName, Country from Customers
--Write a query that uses CASE to create a conditional column 
--that displays 'High' if Price > 1000, and 'Low' if Price <= 1000 from Products table.
select *,
case 
    when Price > 1000 then 'High'
	when Price <= 1000 then 'Low'
	end as Price_category
from Products
--Use IIF to create a column that shows 'Yes' if Stock > 100, and 'No' otherwise (Products_Discounted table, StockQuantity column).
   select *,
   IIF (StockQuantity > 100, 'Yes', 'No') as Stock_category
   from Products_Discounted
--Medium-Level Tasks
--Use UNION to combine results from two queries that select ProductName from Products and ProductName from OutOfStock tables.
 select ProductName from Products
 union
 select ProductName from OutOfStock
--Write a query that returns the difference between the Products and Products_Discounted tables using EXCEPT.
   select * from Products
   except
   select * from Products_Discounted
  
--Create a conditional column using IIF that shows 'Expensive' if the Price is greater than 1000, and 
--'Affordable' if less, from Products table.
   select *,
   iif(Price > 1000, 'Expensive', 'Affordable') Price_category
   from Products
  
--Write a query to find employees in the Employees table who have either Age < 25 or Salary > 60000.
    select * from Employees
	where Age < 25 or Salary > 60000

   
--Update the salary of an employee based on their department, increase by 10% if they work in 'HR' or EmployeeID = 5
select *,
case 
    when DepartmentName = 'HR' or EmployeeID = 5 then Salary* 1.1 
	else Salary end as salary_new
from Employees
select * from Employees
--Hard-Level Tasks
--Use INTERSECT to show products that are common between Products and Products_Discounted tables.
  select ProductName from Products
  intersect
  select ProductName from Products_Discounted

--Write a query that uses CASE to assign 'Top Tier' if SaleAmount > 500, 'Mid Tier' if SaleAmount BETWEEN 200 AND 500, 
--and 'Low Tier' otherwise. (From Sales table)
select *,
case 
   when SaleAmount > 500 then 'Top tier' 
   when SaleAmount between 200 and 500 then 'Mid tier'
   else 'Low tier' end as Sale_category
from Sales

--Use EXCEPT to find customers' ID who have placed orders but do not have a corresponding record in the Invoices table.
select CustomerID from Invoices
  
except

select CustomerID from Customers


--Write a query that uses a CASE statement to determine the discount percentage based on the quantity purchased. 
--Use orders table. Result set should show customerid, quantity and discount percentage. 
--the discount should be applied as follows: 1 item: 3% Between 1 and 3 items : 5% Otherwise: 7%

select CustomerID,
     Quantity,
	 case 
	     when Quantity = 1 then '3%'
		 when Quantity between 1 and 3 then '5%'
		 else '7%' end as discount_percentage
from Orders



