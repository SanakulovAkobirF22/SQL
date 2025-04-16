create table Employees(
EmpID int,
Name varchar(50),
Salary decimal(10,2)
)


--Insert three records into the Employees table using different 
--INSERT INTO approaches (single-row insert and multiple-row insert).
insert into Employees values
(1, 'Alex', 1200)

insert into Employees values
(2, 'John', 1000),
(3, 'Sasha', 2000)
--Update the Salary of an employee where EmpID = 1.
update Employees
set Salary = 1500
where EmpID = 1 

--Delete a record from the Employees table where EmpID = 2.

delete from Employees
where EmpID = 2
select * from Employees
--Demonstrate the difference between DELETE, TRUNCATE, and DROP commands on a test table.
truncate table Employees
delete from Employees
drop table Employees
--Modify the Name column in the Employees table to VARCHAR(100).
alter table Employees
alter column Name varchar(100)

--Add a new column Department (VARCHAR(50)) to the Employees table.

alter table Employees
add  Department varchar(50)
--Change the data type of the Salary column to FLOAT.
alter table Employees
alter column Salary float
--Create another table Departments with columns DepartmentID (INT, PRIMARY KEY)
--and DepartmentName (VARCHAR(50)).
create table Departments(
DepartmentID int primary key,
DepartmentName varchar(50)
);
--Remove all records from the Employees table without deleting its structure.
truncate table Employees
--Intermediate-Level Tasks (6)
--Insert five records into the Departments table using INSERT INTO SELECT from an existing table.
insert into Departments values
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Manegment'),
(5, 'Logist')


--Update the Department of all employees where Salary > 5000 to 'Management'.
UPDATE Employees  
SET Department = 'Management'  
WHERE Salary > 5000;
--Write a query that removes all employees but keeps the table structure intact.
truncate table Employees 
--Drop the Department column from the Employees table.
alter table Employees
drop column Department
--Rename the Employees table to StaffMembers using SQL commands.
exec sp_rename 'Employees', 'StaffMembers';
--Write a query to completely remove the Departments table from the database.
drop table Departments
--Advanced-Level Tasks (9)
--Create a table named Products with at least 5 columns, including: 
--ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)
--drop table Products
drop table Products
create table Products(
ProductID int Primary key,
ProductName varchar,
Category varchar,
Price decimal
);
--Add a CHECK constraint to ensure Price is always greater than 0.

alter table Products
add constraint Ck_Products_Price check (Price>0)
--Modify the table to add a StockQuantity column with a DEFAULT value of 50.
alter table Products
add StockQuantity int default 50;
--Rename Category to ProductCategory
EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';
--Insert 5 records into the Products table using standard INSERT INTO queries.
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES
(1, 'Laptop', 'Electronics', 1200.00, 10),
(2, 'Coffee Maker', 'Appliances', 50.00, 25),
(3, 'Running Shoes', 'Sporting Goods', 80.00, 50),
(4, 'Desk Chair', 'Furniture', 150.00, 15),
(5, 'Bluetooth Speaker', 'Electronics', 35.00, 100);
--Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
SELECT *
INTO Products_Backup
FROM Products;
--Rename the Products table to Inventory.
exec sp_rename 'Products', 'Inventory';
--Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
alter table Invertory
alter column Price float

--Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5.
alter table Products
add ProductCode int identity(1000, 5)




