create database homework4
--Write a query to select the top 5 employees from the Employees table.
select top 5 * from Employees
--Use SELECT DISTINCT to select unique ProductName values from the Products table.
select distinct ProductName from Products
--Write a query that filters the Products table to show products with Price > 100.
select * from Products
where Price > 100

--Write a query to select all CustomerName values that start with 'A' using the LIKE operator.
select * from Customers
where FirstName like 'A_%' 
--Order the results of a Products query by Price in ascending order.
select * from Products
order by Price asc

--Write a query that uses the WHERE clause to filter for employees with Salary >= 60000 and Department = 'HR'.
select * from Employees
where Salary >= 60000 and DepartmentName = 'HR'

--Use ISNULL to replace NULL values in the Email column with the text "noemail@example.com".From Employees table

select isnull(Email, 'noemail@example.com') Email from Employees

--Write a query that shows all products with Price BETWEEN 50 AND 100.
select * from Products
where Price between 50 and 100;

--Use SELECT DISTINCT on two columns (Category and ProductName) in the Products table.
  select distinct Category, ProductName from Products

--After SELECT DISTINCT on two columns (Category and ProductName) Order the results by ProductName in descending order.
select distinct Category, ProductName from Products
order by ProductName desc

--🟠 Medium-Level Tasks (10)
--Write a query to select the top 10 products from the Products table, ordered by Price DESC.
  select top 10 * from  Products
  order by Price desc


--Use COALESCE to return the first non-NULL value from FirstName or LastName in the Employees table.
select coalesce(FirstName, LastName, 'Unknown') as DisplayName from Employees
--Write a query that selects distinct Category and Price from the Products table.
 select distinct(Category), Price from Products

--Write a query that filters the Employees table to show employees whose Age is either between 30 and 40 or Department = 'Marketing'.
select Age, DepartmentName from Employees
where Age between 30 and 40 or DepartmentName = 'Marketing' 
--Use OFFSET-FETCH to select rows 11 to 20 from the Employees table, ordered by Salary DESC.
select * from Employees
order by Salary desc
offset 10 rows fetch next 10 rows only

--Write a query to display all products with Price <= 1000 and Stock > 50, sorted by Stock in ascending order.
select Price, StockQuantity from Products
where Price <= 1000 and StockQuantity > 50
order by StockQuantity 

--Write a query that filters the Products table for ProductName values containing the letter 'e' using LIKE.
select ProductName from Products
where ProductName like '%e%'
--Use IN operator to filter for employees who work in either 'HR', 'IT', or 'Finance'.
select * from Employees
where DepartmentName in ('HR','IT','Finance')
--Use ORDER BY to display a list of customers ordered by City in ascending and PostalCode in descending order.Use customers table
select City, PostalCode from Customers
order by City asc, PostalCode desc
--🔴 Hard-Level Tasks
--Write a query that selects the top 10 products with the highest sales, using TOP(10) and ordered by SalesAmount DESC.

select top 10 * from Sales
order by SaleAmount desc
--Combine FirstName and LastName into one column named FullName in the Employees table. (only in select statement)
select Firstname + ' ' + LastName as FullName from Employees
--Write a query to select the distinct Category, ProductName, and Price for products that are priced above $50, using DISTINCT on three columns.
select distinct Category, ProductName, Price from Products
where Price > 50
--Write a query that selects products whose Price is less than 10% of the average price in the Products table. 
--(Do some research on how to find average price of all products)
select * from Products
where Price < (select avg(Price)* 0.1 from Products)
--Use WHERE clause to filter for employees whose Age is less than 30 and who work in either the 'HR' or 'IT' department.
select Age, DepartmentName from Employees
where Age < 30 and DepartmentName in ('HR','IT')


--Use LIKE with wildcard to select all customers whose Email contains the domain '@gmail.com'.

select Email from Customers
where Email like '%@gmail.com%'
--Write a query that uses the ALL operator to find employees whose salary is greater than all employees in the 'Sales' department.
select * from Employees
where Salary > all (Select Salary from Employees where DepartmentName = 'Sales');

--Write a query that filters the Orders table for orders placed in the last 180 days using BETWEEN and CURRENT_DATE. 
--(Search how to get the current date)
select * from Orders
where OrderDate between dateadd(day, -180, getdate()) and getdate()
--homework was doing
DROP TABLE IF EXISTS Employees;
select * from Employees
CREATE TABLE Employees ( EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50) NULL, 
LastName VARCHAR(50) NULL, DepartmentName VARCHAR(50), Salary DECIMAL(10, 2), 
HireDate DATE, Age INT, Email VARCHAR(100) NULL, Country VARCHAR(50) );


