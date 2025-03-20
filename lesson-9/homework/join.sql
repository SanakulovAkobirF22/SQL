-1
 select * from Employees e join Departments d 
 on e.DepartmentID = d.DepartmentID
 where e.Salary > 5000

 --2
 select * from Customers a join Orders b 
 on a.CustomerID = b.CustomerID
 where YEAR(b.OrderDate) = 2023  
 --3
 select e.Name Employees from Employees e left join Departments d 
 on e.DepartmentID = d.DepartmentID

 --4 
 select  s.SupplierName, p.ProductName from Products p right join Suppliers s
 on s.SupplierID = p.SupplierID

 --5
 select * from Orders o full join Payments p
 on o.OrderID = p.OrderID

 --6 
 select a.Name EmployeeName, b.Name ManagerName 
 from Employees a  join Employees b
 on a.DepartmentID = b.ManagerID

 --7
 select * from Enrollments a 
 join Students b on a.StudentID = b.StudentID
 join Courses c on a.CourseID = c.CourseID
 where c.CourseName = 'Math 101'

 --8
-- select * from Orders
 select a.FirstName + ' ' + a.LastName customer, b.Quantity from Customers a join Orders b
 on a.CustomerID = b.CustomerID
 where b.Quantity > 3;

 --9
select a.Name, b.DepartmentName from Employees a left join Departments b
on a.DepartmentID = b.DepartmentID
where b.DepartmentName = 'Human Resources';
--10
select count(b.DepartmentName) cnt_dp, b.DepartmentName from Employees a join Departments b
on a.DepartmentID = b.DepartmentID
group by b.DepartmentName
having count(b.DepartmentName) >= 10

--11
--select * from Sales
select a.ProductName Products from Products a left join Sales b
on a.ProductID = b.ProductID
where SaleID is null

--12

select b.Quantity, count(b.Quantity) count_quantity from Customers a right join Orders b 
on b.CustomerID = a.CustomerID
group by b.Quantity
having COUNT(b.Quantity) = 1 
select * from Departments
--13
select * from Employees a full join Departments b
on a.DepartmentID = b.DepartmentID
where b.DepartmentID is not null

--14
select a.Name Emp_Name, b.Name ManagerName from Employees a  join Employees b
on a.DepartmentID = b.ManagerID
and a.EmployeeID <> b.EmployeeID

--15 
select * from Orders a left join Customers b 
on a.CustomerID = b.CustomerID
where YEAR(a.OrderDate) = 2022

--16
select a.Name, a.Salary, b.DepartmentName from Employees a join Departments b 
on a.DepartmentID = b.DepartmentID
where b.DepartmentName = 'Sales' and a.Salary > 5000

--17
select a.Name, b.DepartmentName from Employees a join Departments b
on a.DepartmentID = b.DepartmentID
where b.DepartmentName = 'IT'

--18
select * from Orders a full join Payments b 
on a.OrderID = b.OrderID
where a.OrderID is not null and b.OrderID is not null

--19

select * from Products a left join Orders b 
on a.ProductID = b.ProductID
where b.OrderID is null

--20

select a.Name, b.DepartmentName, a.Salary from Employees a join Departments b 
on a.DepartmentID = b.DepartmentID
where a.Salary > (select avg(Salary) from Employees)

--21
select * from Orders a left join Payments b 
on a.OrderID = b.OrderID
where YEAR(a.OrderDate) < 2020 and b.PaymentID is null

--22
select a.ProductName, a.Price, a.StockQuantity from Products a full join Categories b
on a.ProductID = b.CategoryID
where b.CategoryID is null

--23
select a.Name Emp_Name, b.Name Mana_Name, a.Salary from Employees a join Employees b
on a.DepartmentID = b.ManagerID
and a.EmployeeID <> b.EmployeeID
where a.Salary > 5000

--24
select a.Name, b.DepartmentName from Employees a right join Departments b
on  b.DepartmentID = a.DepartmentID
where b.DepartmentName like 'M%'

--25
select a.ProductName, b.SaleAmount from Products a join Sales b
on a.ProductID = b.ProductID
where b.SaleAmount > 1000

--26
select * from Students a left join Enrollments b
on a.StudentID = b.StudentID
left join Courses c on b.CourseID = c.CourseID
where c.CourseName <> 'Math 101'

--27
select * from Orders a full join Payments b
on a.OrderID = b.OrderID
where a.OrderID is null

--28 
select * from Products a join Categories b
on a.ProductID = b.CategoryID
where b.CategoryName = 'Electronics' or b.CategoryName = 'Furniture'
