create database lesson5

CREATE TABLE EmployeeProjects (
    EmployeeProjectID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectID INT,
    StartDate DATE,
    EndDate DATE,
    Role VARCHAR(100)
);
INSERT INTO EmployeeProjects (EmployeeProjectID, EmployeeID, ProjectID, StartDate, EndDate, Role) VALUES
(1, 1, 1, '2023-01-10', '2023-06-10', 'Lead Developer'),
(2, 2, 2, '2023-02-15', '2023-07-15', 'Project Manager'),
(3, 3, 1, '2023-03-01', '2023-08-01', 'Developer'),
(4, 4, 3, '2023-04-05', '2023-09-05', 'QA Analyst'),
(5, 5, 2, '2023-05-12', '2023-10-12', 'Business Analyst'),
(6, 6, 3, '2023-06-20', '2023-11-20', 'Developer'),
(7, 7, 1, '2023-07-25', '2023-12-25', 'Designer'),
(8, 8, 4, '2023-08-10', '2024-01-10', 'Project Manager'),
(9, 9, 2, '2023-09-15', '2024-02-15', 'Developer'),
(10, 10, 5, '2023-10-05', '2024-03-05', 'QA Analyst'),
(11, 1, 6, '2023-11-15', '2024-04-15', 'Lead Developer'),
(12, 2, 4, '2023-12-01', '2024-05-01', 'Business Analyst'),
(13, 3, 5, '2024-01-10', '2024-06-10', 'Designer'),
(14, 4, 6, '2024-02-15', '2024-07-15', 'Project Manager'),
(15, 5, 7, '2024-03-20', '2024-08-20', 'Developer'),
(16, 6, 8, '2024-04-25', '2024-09-25', 'QA Analyst'),
(17, 7, 7, '2024-05-30', '2024-10-30', 'Lead Developer'),
(18, 8, 9, '2024-06-15', '2024-11-15', 'Project Manager'),
(19, 9, 6, '2024-07-01', '2024-12-01', 'Business Analyst'),
(20, 10, 8, '2024-08-05', '2025-01-05', 'Developer'),
(21, 1, 10, '2024-09-10', '2025-02-10', 'Designer'),
(22, 2, 9, '2024-10-15', '2025-03-15', 'Lead Developer'),
(23, 3, 8, '2024-11-20', '2025-04-20', 'QA Analyst'),
(24, 4, 7, '2024-12-01', '2025-05-01', 'Project Manager'),
(25, 5, 6, '2025-01-10', '2025-06-10', 'Business Analyst'),
(26, 6, 5, '2025-02-20', '2025-07-20', 'Developer'),
(27, 7, 4, '2025-03-25', '2025-08-25', 'Designer'),
(28, 8, 3, '2025-04-10', '2025-09-10', 'Lead Developer'),
(29, 9, 2, '2025-05-05', '2025-10-05', 'QA Analyst'),
(30, 10, 1, '2025-06-15', '2025-11-15', 'Project Manager'),
(31, 1, 5, '2025-07-01', '2025-12-01', 'Developer'),
(32, 2, 4, '2025-08-20', '2026-01-20', 'Lead Developer'),
(33, 3, 6, '2025-09-05', '2026-02-05', 'QA Analyst'),
(34, 4, 7, '2025-10-10', '2026-03-10', 'Business Analyst'),
(35, 5, 8, '2025-11-25', '2026-04-25', 'Designer'),
(36, 6, 9, '2025-12-05', '2026-05-05', 'Project Manager'),
(37, 7, 10, '2026-01-10', '2026-06-10', 'Lead Developer'),
(38, 8, 9, '2026-02-01', '2026-07-01', 'QA Analyst'),
(39, 9, 6, '2026-03-15', '2026-08-15', 'Business Analyst'),
(40, 10, 5, '2026-04-10', '2026-09-10', 'Developer');

select * from EmployeeProjects


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(1, 'Laptop', 'Electronics', 999.99, 50),
(2, 'Smartphone', 'Electronics', 799.99, 100),
(3, 'Tablet', 'Electronics', 499.99, 200),
(4, 'Wireless Mouse', 'Electronics', 29.99, 500),
(5, 'Keyboard', 'Electronics', 49.99, 300),
(6, 'Monitor', 'Electronics', 199.99, 150),
(7, 'Headphones', 'Electronics', 89.99, 400),
(8, 'Smartwatch', 'Electronics', 159.99, 50),
(9, 'Camera', 'Electronics', 499.99, 75),
(10, 'Smart TV', 'Electronics', 699.99, 30),
(11, 'Sofa', 'Furniture', 299.99, 20),
(12, 'Dining Table', 'Furniture', 399.99, 15),
(13, 'Office Chair', 'Furniture', 99.99, 50),
(14, 'Bookshelf', 'Furniture', 129.99, 35),
(15, 'Lamp', 'Furniture', 29.99, 60),
(16, 'Bed', 'Furniture', 499.99, 10),
(17, 'Refrigerator', 'Appliances', 799.99, 25),
(18, 'Washing Machine', 'Appliances', 699.99, 20),
(19, 'Air Conditioner', 'Appliances', 599.99, 10),
(20, 'Microwave', 'Appliances', 99.99, 100),
(21, 'Jacket', 'Clothing', 79.99, 100),
(22, 'Jeans', 'Clothing', 49.99, 150),
(23, 'T-Shirt', 'Clothing', 19.99, 200),
(24, 'Sweater', 'Clothing', 39.99, 120),
(25, 'Dress', 'Clothing', 59.99, 80),
(26, 'Shoes', 'Clothing', 89.99, 50),
(27, 'Boots', 'Clothing', 119.99, 60),
(28, 'Socks', 'Clothing', 5.99, 500),
(29, 'Scarf', 'Clothing', 14.99, 100),
(30, 'Hat', 'Clothing', 24.99, 75),
(31, 'Blender', 'Appliances', 49.99, 200),
(32, 'Toaster', 'Appliances', 29.99, 150),
(33, 'Electric Kettle', 'Appliances', 39.99, 300),
(34, 'Coffee Maker', 'Appliances', 89.99, 50),
(35, 'Hair Dryer', 'Beauty', 39.99, 120),
(36, 'Shampoo', 'Beauty', 19.99, 300),
(37, 'Conditioner', 'Beauty', 14.99, 400),
(38, 'Nail Polish', 'Beauty', 9.99, 200),
(39, 'Body Lotion', 'Beauty', 15.99, 150),
(40, 'Perfume', 'Beauty', 49.99, 60);

select * from Products

--1 

select ProductID, ProductName Name, Category, Price from Products

--2
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(50),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    PostalCode VARCHAR(20));

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, PostalCode) VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '555-1234', '123 Elm St', 'New York', 'NY', '10001'),
(2, 'Jane', 'Smith', 'janesmith@example.com', '555-2345', '456 Oak St', 'Los Angeles', 'CA', '90001'),
(3, 'Alice', 'Johnson', 'alicej@example.com', '555-3456', '789 Pine St', 'Chicago', 'IL', '60601'),
(4, 'Bob', 'Brown', 'bobbrown@example.com', '555-4567', '101 Maple St', 'Houston', 'TX', '77001'),
(5, 'Charlie', 'Davis', 'charliedavis@example.com', '555-5678', '202 Birch St', 'Phoenix', 'AZ', '85001'),
(6, 'David', 'Martinez', 'davidm@example.com', '555-6789', '303 Cedar St', 'San Diego', 'CA', '92101'),
(7, 'Emily', 'Garcia', 'emilyg@example.com', '555-7890', '404 Redwood St', 'Dallas', 'TX', '75201'),
(8, 'Frank', 'Hernandez', 'frankh@example.com', '555-8901', '505 Willow St', 'Austin', 'TX', '73301'),
(9, 'Grace', 'Lopez', 'gracel@example.com', '555-9012', '606 Aspen St', 'Miami', 'FL', '33101'),
(10, 'Helen', 'Gonzalez', 'heleng@example.com', '555-0123', '707 Fir St', 'San Francisco', 'CA', '94101'),
(11, 'Irene', 'Perez', 'irenep@example.com', '555-1234', '808 Maple Ave', 'Seattle', 'WA', '98101'),
(12, 'Jack', 'Wilson', 'jackw@example.com', '555-2345', '909 Oak Ave', 'Denver', 'CO', '80201'),
(13, 'Kim', 'Anderson', 'kima@example.com', '555-3456', '111 Pine Ave', 'Boston', 'MA', '02101'),
(14, 'Liam', 'Thomas', 'liamt@example.com', '555-4567', '222 Cedar Ave', 'Atlanta', 'GA', '30301'),
(15, 'Megan', 'Taylor', 'megant@example.com', '555-5678', '333 Redwood Ave', 'Washington', 'DC', '20001'),
(16, 'Nathan', 'Moore', 'nathanm@example.com', '555-6789', '444 Willow Ave', 'Detroit', 'MI', '48201'),
(17, 'Olivia', 'Jackson', 'oliviaj@example.com', '555-7890', '555 Birch Ave', 'Portland', 'OR', '97201'),
(18, 'Paul', 'White', 'paulw@example.com', '555-8901', '666 Maple Blvd', 'Minneapolis', 'MN', '55101'),
(19, 'Quincy', 'Lee', 'quincyl@example.com', '555-9012', '777 Oak Blvd', 'Charlotte', 'NC', '28201'),
(20, 'Rachel', 'Harris', 'rachelh@example.com', '555-0123', '888 Pine Blvd', 'Las Vegas', 'NV', '89101'),
(21, 'Sam', 'Clark', 'samc@example.com', '555-1234', '999 Cedar Blvd', 'Orlando', 'FL', '32801'),
(22, 'Tina', 'Allen', 'tinaallen@example.com', '555-2345', '1010 Redwood Blvd', 'New Orleans', 'LA', '70112'),
(23, 'Ursula', 'Scott', 'ursulas@example.com', '555-3456', '1111 Willow Blvd', 'Tampa', 'FL', '33601'),
(24, 'Victor', 'Adams', 'victora@example.com', '555-4567', '1212 Birch Blvd', 'Cleveland', 'OH', '44101'),
(25, 'Walter', 'Baker', 'walterb@example.com', '555-5678', '1313 Oak Blvd', 'Columbus', 'OH', '43201'),
(26, 'Xander', 'Nelson', 'xandern@example.com', '555-6789', '1414 Cedar Blvd', 'Indianapolis', 'IN', '46201'),
(27, 'Yvonne', 'Carter', 'yvonnec@example.com', '555-7890', '1515 Maple Dr', 'Kansas City', 'MO', '64101'),
(28, 'Zane', 'Mitchell', 'zanem@example.com', '555-8901', '1616 Redwood Dr', 'Salt Lake City', 'UT', '84101'),
(29, 'Anna', 'Roberts', 'annar@example.com', '555-9012', '1717 Willow Dr', 'Birmingham', 'AL', '35203'),
(30, 'Ben', 'King', 'benk@example.com', '555-0123', '1818 Birch Dr', 'Nashville', 'TN', '37201'),
(31, 'Chloe', 'Green', 'chloeg@example.com', '555-1234', '1919 Oak Dr', 'Boulder', 'CO', '80301'),
(32, 'Daniel', 'Evans', 'daniele@example.com', '555-2345', '2020 Cedar Dr', 'Sacramento', 'CA', '94201'),
(33, 'Ella', 'Collins', 'ellac@example.com', '555-3456', '2121 Redwood Dr', 'Louisville', 'KY', '40202'),
(34, 'Finn', 'Morris', 'finnm@example.com', '555-4567', '2222 Willow St', 'Cincinnati', 'OH', '45202'),
(35, 'Grace', 'Lee', 'gracel@example.com', '555-5678', '2323 Birch St', 'Baltimore', 'MD', '21201'),
(36, 'Holly', 'Martinez', 'hollym@example.com', '555-6789', '2424 Oak St', 'St. Louis', 'MO', '63101'),
(37, 'Ian', 'Robinson', 'ianr@example.com', '555-7890', '2525 Cedar St', 'Fort Worth', 'TX', '76101'),
(38, 'Jasmine', 'Walker', 'jasminew@example.com', '555-8901', '2626 Redwood St', 'Raleigh', 'NC', '27601'),
(39, 'Kyle', 'Young', 'kyley@example.com', '555-9012', '2727 Willow St', 'Pittsburgh', 'PA', '15201'),
(40, 'Liam', 'Harris', 'liamh@example.com', '555-0123', '2828 Birch St', 'Richmond', 'VA', '23220');

select * from Customers

exec sp_rename 'Customers', 'Client';

select * from Client

--3

CREATE TABLE Products_Discontinued (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products_Discontinued (ProductID, ProductName, Price) VALUES
(21, 'DVD Player', 70.00),
(22, 'MP3 Player', 50.00),
(23, 'CRT Monitor', 100.00),
(24, 'Fax Machine', 120.00),
(25, 'Pager', 30.00),
(26, 'VCR', 90.00),
(27, 'Blackberry Phone', 150.00),
(28, 'MiniDisc Player', 80.00),
(29, 'Plasma TV', 600.00),
(30, 'Dot Matrix Printer', 200.00),
(31, 'Slide Projector', 250.00),
(32, 'Camcorder', 400.00),
(33, 'Floppy Disk Drive', 40.00),
(34, 'Cassette Player', 35.00),
(35, 'Typewriter', 180.00),
(36, 'Analog Camera', 220.00),
(37, 'Game Boy', 120.00),
(38, 'Handheld PDA', 175.00),
(39, 'Walkie Talkie', 90.00),
(40, 'Portable CD Player', 55.00);
--3
select ProductName from Products
union
select ProductName from Products_Discontinued

--4

select ProductName from Products
intersect
select ProductName from Products_Discontinued

--5
 
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(50)
);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, Status) VALUES
(1, 1, '2025-01-10', 1500.00, 'Shipped'),
(2, 2, '2025-01-12', 1200.00, 'Pending'),
(3, 3, '2025-01-15', 250.00, 'Delivered'),
(4, 4, '2025-01-18', 800.00, 'Cancelled'),
(5, 5, '2025-01-20', 950.00, 'Shipped'),
(6, 6, '2025-01-22', 1450.00, 'Shipped'),
(7, 7, '2025-01-25', 320.00, 'Delivered'),
(8, 8, '2025-01-28', 500.00, 'Pending'),
(9, 9, '2025-01-30', 1100.00, 'Shipped'),
(10, 10, '2025-02-02', 1300.00, 'Shipped'),
(11, 11, '2025-02-05', 1700.00, 'Delivered'),
(12, 12, '2025-02-07', 800.00, 'Pending'),
(13, 13, '2025-02-09', 600.00, 'Delivered'),
(14, 14, '2025-02-12', 950.00, 'Shipped'),
(15, 15, '2025-02-15', 1500.00, 'Pending'),
(16, 16, '2025-02-17', 1250.00, 'Shipped'),
(17, 17, '2025-02-20', 2000.00, 'Shipped'),
(18, 18, '2025-02-22', 2200.00, 'Pending'),
(19, 19, '2025-02-25', 1800.00, 'Delivered'),
(20, 20, '2025-02-28', 2100.00, 'Cancelled'),
(21, 21, '2025-03-02', 800.00, 'Shipped'),
(22, 22, '2025-03-04', 900.00, 'Delivered'),
(23, 23, '2025-03-06', 300.00, 'Shipped'),
(24, 24, '2025-03-09', 850.00, 'Shipped'),
(25, 25, '2025-03-12', 750.00, 'Delivered'),
(26, 26, '2025-03-15', 500.00, 'Pending'),
(27, 27, '2025-03-17', 1000.00, 'Shipped'),
(28, 28, '2025-03-20', 450.00, 'Cancelled'),
(29, 29, '2025-03-22', 1250.00, 'Pending'),
(30, 30, '2025-03-25', 300.00, 'Shipped'),
(31, 31, '2025-03-28', 600.00, 'Delivered'),
(32, 32, '2025-03-30', 950.00, 'Shipped'),
(33, 33, '2025-04-02', 700.00, 'Pending'),
(34, 34, '2025-04-05', 1200.00, 'Delivered'),
(35, 35, '2025-04-07', 1500.00, 'Shipped'),
(36, 36, '2025-04-10', 2500.00, 'Pending'),
(37, 37, '2025-04-12', 1000.00, 'Delivered'),
(38, 38, '2025-04-15', 1200.00, 'Shipped'),
(39, 39, '2025-04-18', 1800.00, 'Pending'),
(40, 40, '2025-04-20', 1600.00, 'Shipped');

/* Use UNION ALL to combine two tables, Products and Orders, that have the same structure. */

select Category from Products
union all
select Status from Orders

/* Write a query to select distinct customer names (CustomerName) and their corresponding 
Country using SELECT DISTINCT.
 */
 --drop table Customers

  
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'John Doe', 'USA'),
(2, 'Jane Smith', 'UK'),
(3, 'Michael Johnson', 'Canada'),
(4, 'Sarah Brown', 'Australia'),
(5, 'David Green', 'USA'),
(6, 'Linda White', 'Canada'),
(7, 'James Black', 'UK'),
(8, 'Emily Blue', 'Australia'),
(9, 'Matthew Red', 'USA'),
(10, 'Olivia Yellow', 'Canada'),
(11, 'John Doe', 'Australia'),
(12, 'Jane Smith', 'Canada'),
(13, 'Michael Johnson', 'UK'),
(14, 'Sarah Brown', 'USA'),
(15, 'David Green', 'Canada'),
(16, 'Linda White', 'Australia'),
(17, 'James Black', 'USA'),
(18, 'Emily Blue', 'Canada'),
(19, 'Matthew Red', 'UK'),
(20, 'Olivia Yellow', 'Australia'),
(21, 'John Doe', 'Canada'),
(22, 'Jane Smith', 'Australia'),
(23, 'Michael Johnson', 'USA'),
(24, 'Sarah Brown', 'UK'),
(25, 'David Green', 'Australia'),
(26, 'Linda White', 'USA'),
(27, 'James Black', 'Canada'),
(28, 'Emily Blue', 'UK'),
(29, 'Matthew Red', 'Australia'),
(30, 'Olivia Yellow', 'USA'),
(31, 'John Doe', 'UK'),
(32, 'Jane Smith', 'USA'),
(33, 'Michael Johnson', 'Australia'),
(34, 'Sarah Brown', 'Canada'),
(35, 'David Green', 'UK'),
(36, 'Linda White', 'USA'),
(37, 'James Black', 'Australia'),
(38, 'Emily Blue', 'Canada'),
(39, 'Matthew Red', 'USA'),
(40, 'Olivia Yellow', 'UK');

select distinct CustomerName, Country from Customers;


--7 
/* Write a query that uses CASE to create a conditional column that displays 
'High' if Price > 100, and 'Low' if Price <= 100.
*/
select ProductName,
Category,
Price,
case 
 when price > 100 then 'High'
 when Price <= 100 then 'Low'
 end as Price_category
from Products

--Use GROUP BY to find the number of products (ProductID) in each Category.

select  Category, Count(ProductID) as Pr_count from Products
group by Category; 

--Use IIF to create a column that shows 'Yes' if Stock > 100, and 'No' otherwise. */
select 
ProductName,
Category,
Price,
iif(StockQuantity > 100, 'YES', 'NO') Stock_Status
from Products

 /*Write a query that joins the Orders and Customers tables using 
INNER JOIN and aliases the CustomerName as ClientName.

Use UNION to combine results from two queries that select ProductName 
from Products and ProductName from OutOfStock tables.

Write a query that returns the difference between the 
Products and DiscontinuedProducts tables using EXCEPT.

Write a query that uses CASE to assign a value of 'Eligible' to customers 
who have placed more than 5 orders, otherwise 'Not Eligible'.

Create a conditional column using IIF that shows 'Expensive' if the 
Price is greater than 100, and 'Affordable' if less.

Write a query that uses GROUP BY to count the 
number of orders per CustomerID in the Orders table.

Write a query to find employees in the Employees 
table who have either Age < 25 or Salary > 6000.

Use GROUP BY to find the total sales (SalesAmount) 
per Region in the Sales table.

Write a query that combines data from the Customers and Orders tables 
using LEFT JOIN, and create an alias for OrderDate.

Use IF statement to update the salary of an employee based on their department, 
increase by 10% if they work in 'HR'*/
select * from customers
select * from Orders


select customers.CustomerName as ClientName,
Orders.OrderDate,
Orders.TotalAmount
from customers inner join Orders
on customers.CustomerID = Orders.CustomerID

--3
select ProductName from Products
except
select ProductName from Products_Discontinued;

