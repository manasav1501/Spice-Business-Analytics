CREATE DATABASE SpiceBusiness;
USE SpiceBusiness;
SELECT DATABASE();
USE SpiceBusiness;
CREATE TABLE Products(
	ProductID VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);
ALTER TABLE Products DROP COLUMN Category;
CREATE TABLE Orders(
	OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID VARCHAR(10),
    TotalAmount DECIMAL(10,2)
);
ALTER TABLE Orders DROP COLUMN OrderID;
DROP TABLE Orders;
CREATE TABLE Orders(
	OrderID VARCHAR(10) PRIMARY KEY,
    OrderDate DATE,
    CustomerID VARCHAR(10),
    TotalAmount DECIMAL(10,2)
);
CREATE TABLE OrderItems(
	OrderID VARCHAR(10),
	ProductID VARCHAR(10),
	Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);
SHOW TABLES;
DESCRIBE Products;
DESCRIBE Orders;
DESCRIBE OrderItems;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM OrderItems;
SELECT OrderDate FROM Orders;
SELECT * FROM Orders WHERE TotalAmount>500;
SELECT * FROM Orders ORDER BY TotalAmount DESC;
SELECT SUM(TotalAmount) AS TotalRevenue FROM Orders;
SELECT COUNT(*) AS total_rows FROM Orders;
SELECT COUNT(*) AS total_rows FROM OrderItems;
SELECT COUNT(*) AS total_rows FROM Products;

