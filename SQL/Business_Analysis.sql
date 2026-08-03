USE SpiceBusiness;

-- 1. How much revenue did the business generate?
SELECT SUM(TotalAmount) AS TotalRevenue FROM Orders;

-- 2. How many orders did we recieve?
SELECT COUNT(*) AS total_orders FROM Orders;

-- 3. On average, how much does a customer spend per order?
SELECT ROUND(AVG(TotalAmount),2) AS AOV FROM Orders;

-- 4. Which order generated the highest revenue?
SELECT * FROM Orders ORDER BY TotalAmount DESC LIMIT 1 ;

-- Product Performance Analysis
-- 5. How much revenue did each product generate?
SELECT p.productname, -- Getting list of product's name from Products table
SUM(oi.Quantity) AS TotalProductsSold,
SUM(oi.Quantity * p.Price) AS TotalRevenue
FROM OrderItems oi
JOIN Products P
ON oi.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;

-- 6. Which product sold the most packets?
SELECT p.ProductName,
SUM(oi.Quantity) AS TotalSales
FROM OrderItems oi
JOIN Products p
ON oi.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;

-- 7. Which orders contained the most items?
SELECT OrderID,
SUM(Quantity) AS TotalSales
FROM OrderItems
GROUP BY OrderID
ORDER BY TotalSales DESC;

-- 8. What is the number of unique customers?
SELECT COUNT(DISTINCT CustomerID) AS UniqueCustomers
FROM Orders;

-- 9. What is the number of repeat customers?
SELECT CustomerID,
COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID HAVING COUNT(OrderID) > 1
ORDER BY TotalOrders DESC;

-- 10. Who are the top customers by revenue?
SELECT CustomerID,
SUM(TotalAmount) AS Revenue
FROM orders    
GROUP BY CustomerID
ORDER BY Revenue DESC;

-- 11. How much quantity of each product is sold?
SELECT p.ProductName,
SUM(oi.Quantity) AS QuantitySold
FROM OrderItems oi
JOIN Products p
ON oi.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY QuantitySold DESC;

-- 12. What is the revenue contribution of each product?
SELECT p.ProductName,
SUM(oi.Quantity*p.Price) AS Revenue
FROM OrderItems oi
JOIN Products p
ON oi.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY Revenue DESC; 

-- 13. What is the average number of products per order?
SELECT ROUND(AVG(ProductCount),2)
FROM(
SELECT OrderID,
SUM(Quantity) AS ProductCount
FROM OrderItems
GROUP BY OrderID
)x;
-- everything is calculated in brackets and then final value is assigned to ProductCount

-- 14. What are the largest orders?
SELECT *
FROM Orders
ORDER BY TotalAmount DESC
LIMIT 10;

-- 15. What is the revenue each month?
SELECT -- we don't put Orderdate as we need monthly not each date so.
MONTH(OrderDate) AS MonthNo,
SUM(TotalAmount) AS Revenue
FROM Orders
GROUP BY MONTH(OrderDate)
ORDER BY MonthNo;

-- 16. What is the no of orders placed each month?
SELECT 
MONTH(OrderDate) AS MonthNo,
COUNT(OrderID) AS NoOfOrder
FROM Orders
GROUP BY MONTH(OrderDate)
ORDER BY MonthNo;

-- 17. What is the average quantity purchased per product?
SELECT p.ProductName,
ROUND(AVG(oi.Quantity),2) AS qtyperP 
FROM OrderItems oi
JOIN Products p
ON oi.ProductID = p.ProductID
GROUP BY p.ProductName;

-- 18. What are the total packets sold?
SELECT SUM(Quantity) AS TotalPacksSold FROM OrderItems; 
