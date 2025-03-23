--1
select * from Orders a join Customers b
on a.CustomerID = b.CustomerID
where year(a.OrderDate) > 2022

--2
select * from Employees a join Departments b
on a.DepartmentID = b.DepartmentID
where b.DepartmentName = 'Sales' or b.DepartmentName = 'Marketing'

--3
select * from Departments a
cross apply
(select top 1 
Name,
Salary
from Employees b
where b.DepartmentID = a.DepartmentID
order by Salary desc) vl

--4
select * from Customers a join Orders b 
on a.CustomerID = b.CustomerID 
and Year(b.OrderDate) = 2023 
and a.Country = 'USA'

--5 
/*  Write a query to join a derived table (SELECT CustomerID,
COUNT(*) FROM Orders GROUP BY CustomerID) with the Customers 
table to show the number of orders per customer.*/
--solution 1
select b.CustomerID, count(*) order_count from Customers a join Orders b
on a.CustomerID = b.CustomerID
group by b.CustomerID
--solution 2
select 
c.CustomerID,
c.LastName,
Order_count.Ordercount
from Customers c 
join (select b.CustomerID, count(*)
as Ordercount
from Orders b
group by b.CustomerID) Order_count
on c.CustomerID = Order_count.CustomerID

--6
select * from Products a join Suppliers b
on a.SupplierID = b.SupplierID
and b.SupplierName = 'Gadget Supplies' or  b.SupplierName = 'Clothing Mart'

--7
/* 
 Write a query to demonstrate the use of OUTER APPLY between Customers and 
a derived table that returns each Customers''s most recent order.
*/
select * from Customers a 
outer apply 
(select top 1
b.OrderDate
from Orders b
where a.CustomerID = b.CustomerID
order by OrderDate desc) vl

--8
select * from Orders a join Customers b
on a.CustomerID = b.CustomerID and a.TotalAmount > 500

--9
select * from Products a join Sales b
on a.ProductID = b.ProductID 
and year(b.SaleDate) = 2022 or b.SaleAmount > 400


--10
/* 
Write a query to join a derived table that calculates the total sales 
(SELECT ProductID, SUM(Amount) FROM Sales GROUP BY ProductID) with the Products 
*/

select 
a.ProductID,
a.ProductName, 
vl.sum_total
from Products a 
join
(select ProductID, sum(SaleAmount) sum_total 
from Sales
group by ProductID) vl
on a.ProductID = vl.ProductID

--11

select a.Name, b.DepartmentName, a.Salary from Employees a join Departments b
on a.DepartmentID = b.DepartmentID
and b.DepartmentName = 'Human Resources' and a.Salary > 50000

--12
/* 
Write a query to use OUTER APPLY to return all customers along with 
their most recent orders, 
including customers who have not placed any orders.
*/
select 
a.CustomerID,
a.FirstName,
a.LastName,
a.Country

from Customers a
outer apply 
(select top 1 OrderID,
OrderDate
from Orders b
where b.CustomerID = a.CustomerID
order by OrderDate desc)vl

--13
select a.Category,
a.Price,
a.ProductName,
a.StockQuantity,
b.SaleDate
from Products a join Sales b
on a.ProductID = b.ProductID 
and year(b.SaleDate) = 2023 
and a.StockQuantity > 50

--14
select a.Name, a.Salary, a.HireDate, b.DepartmentName 
from Employees a join Departments b
on a.DepartmentID = b.DepartmentID
and b.DepartmentName = 'Sales' or year(a.HireDate) > 2020

--15
select * from Orders a join Customers b
on a.CustomerID = b.CustomerID
and b.Country = 'USA' and b.PostalCode like '____%'

--16
 select * from Products a join Sales b
 on a.ProductID = b.ProductID 
 and a.ProductName = 'Electronics' or b.SaleAmount > 350
 /*Write a query to join a derived table that returns a count of products per category 
(SELECT CategoryID, COUNT(*) FROM Products GROUP BY CategoryID) with the Categories table 
to show the count of products in each category. */
 
 
 --17
 select 
 b.CategoryName,
 vl.Category,
 vl.count_category
 from Categories b
 join 
 (select 
 a.Category,
 count(*)  as count_category
 from Products a
 group by a.Category)vl
 on b.CategoryID  = vl.Category

 --18

 /* 18. Write a query to join Orders and Customers using AND in the ON clause to show 
 orders 
where the customer is from 'Los Angeles' and the order amount is greater than 300.*/

select c.City, c.FirstName, c.LastName, o.TotalAmount 
from Orders o join Customers c 
on o.CustomerID = c.CustomerID
and c.City = 'Los Angeles' and o.TotalAmount > 300

--19
/* Write a query to join Employees and Departments using a complex OR condition 
in the ON clause to show employees who are in the 'HR' or 'Finance' department, or have at 
least 4 wowels in their name.
*/

select e.Name, e.Salary, d.DepartmentName from Employees e join Departments d 
on e.DepartmentID = d.DepartmentID
and d.DepartmentName = 'Human Resources' 
or d.DepartmentName = 'Finance' 
or
    (LEN(Name) - LEN(REPLACE(LOWER(Name), 'a', ''))) + 
    (LEN(Name) - LEN(REPLACE(LOWER(Name), 'e', ''))) + 
    (LEN(Name) - LEN(REPLACE(LOWER(Name), 'i', ''))) + 
    (LEN(Name) - LEN(REPLACE(LOWER(Name), 'o', ''))) + 
    (LEN(Name) - LEN(REPLACE(LOWER(Name), 'u', ''))) >= 4;

/* 20. Write a query to join Sales and Products using AND in the ON clause to filter 
products that have both a sales quantity greater than 100 and a price above 500.
*/
select p.ProductName, s.SaleAmount, p.Price from Sales s join Products p
on s.ProductID = p.ProductID
and s.SaleAmount >= 100 and p.Price > 500

--21
select e.Name, e.Salary, d.DepartmentName from Employees e join Departments d
on e.DepartmentID = d.DepartmentID
and d.DepartmentName = 'Sales' or d.DepartmentName = 'Marketing' 
and e.Salary > 60000
