create database homework3new

--Define and explain the purpose of BULK INSERT in SQL Server.
--List four file formats that can be imported into SQL Server.
--Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).
create table Products
(ProductID INT PRIMARY KEY,
ProductName varchar(50),
Price decimal(10,2));

--Insert three records into the Products table using INSERT INTO.
insert into Products values
(101, 'Samsung', 1200.00),
(102, 'Iphone',  1400.00),
(103, 'Redmi', 1000.00);
--Explain the difference between NULL and NOT NULL with examples.
--Add a UNIQUE constraint to the ProductName column in the Products table.
alter table Products
add constraint UQ_ProductName unique (ProductName);
--Write a comment in a SQL query explaining its purpose.
--it is comment to explain this code in sql
--Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
create table Categories (
  CategoryID int Primary key,
  CategoryName varchar(100) unique
);
--Explain the purpose of the IDENTITY column in SQL Server.
--🟠 Medium-Level Tasks (10)
--Use BULK INSERT to import data from a text file into the Products table.
 BULK INSERT Products
 FROM 'C:\Your\Path\products.txt'
    WITH (
    FIELDTERMINATOR = ',',  -- separates columns
    ROWTERMINATOR = '\n',   -- separates rows
    FIRSTROW = 1            -- skip header if needed
);
--Create a FOREIGN KEY in the Products table that references the Categories table.
drop table Products
create table Products (
   ProductID int primary key,
   ProductName varchar(100),
   Price decimal (10, 2),
   CategoryID int, --foreign key column

   foreign key (CategoryID) references Categories(CategoryID)

);


--Explain the differences between PRIMARY KEY and UNIQUE KEY with examples.
--Add a CHECK constraint to the Products table ensuring Price > 0.
alter table Products
add constraint CK_Products_Price check (Price > 0);
--Modify the Products table to add a column Stock (INT, NOT NULL).
alter table Products
add Stock int not null
--Use the ISNULL function to replace NULL values in a column with a default value.
SELECT ProductID, ProductName, ProductCategory, Price, ISNULL(StockQuantity, 0) AS StockQuantity
FROM Products;
--Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
--🔴 Hard-Level Tasks (10)
--Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Age INT CHECK (Age >= 18),
    City VARCHAR(100),
    Email VARCHAR(255)
);
--Create a table with an IDENTITY column starting at 100 and incrementing by 10.
CREATE TABLE MyTable (
    ID INT IDENTITY(100, 10) PRIMARY KEY,
    Data VARCHAR(255)
);
--Write a query to create a composite PRIMARY KEY in a new table OrderDetails.

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    PRIMARY KEY (OrderID, ProductID)
);
--Explain with examples the use of COALESCE and ISNULL functions for handling NULL values.
CREATE TABLE SampleData (
    ID INT,
    Value VARCHAR(50)
);

INSERT INTO SampleData (ID, Value) VALUES
(1, 'Data1'),
(2, NULL),
(3, 'Data3');

-- Use ISNULL to replace NULL values
SELECT ID, ISNULL(Value, 'No Value') AS ValueWithReplacement
FROM SampleData;

SELECT COALESCE(NULL, NULL, 'Found Value', 'Another Value') AS Result;


-- Example using COALESCE with sample table.
SELECT ID, COALESCE(Value, 'No Value', 'Still No Value') AS ValueWithReplacement
FROM SampleData;
--Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Department VARCHAR(100),
    Salary DECIMAL(10, 2)
);
--Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    -- Other order columns...
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
