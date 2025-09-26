Use AdventureWorks;

SELECT DATENAME(WEEKDAY, OrderDate) AS Weekday, COUNT(*) AS OrderCount
FROM Sales_2022
GROUP BY DATENAME(WEEKDAY, OrderDate)
ORDER BY OrderCount DESC;


SELECT TOP 5 p.ProductName, COUNT(o.OrderNumber) AS OrderCount
FROM Sales_2022 o
JOIN [Product] p ON o.ProductKey = p.ProductKey
GROUP BY p.ProductName
ORDER BY OrderCount DESC;


SELECT t.Region, COUNT(*) AS OrderCount
FROM Sales_2022 o
JOIN Territory t ON o.TerritoryKey = t.SalesTerritoryKey
GROUP BY t.Region;


SELECT MONTH(OrderDate) AS Month, COUNT(*) AS OrderCount
FROM Sales_2022
WHERE YEAR(OrderDate) = 2022
GROUP BY MONTH(OrderDate)
ORDER BY Month;


SELECT p.ProductName, p.ProductKey
FROM [Product] p
LEFT JOIN Sales_2022 o ON p.ProductKey = o.ProductKey
WHERE o.OrderNumber IS NULL;


SELECT o.OrderDate, COUNT(o.OrderNumber) AS OrdersPerDay
FROM Sales_2022 o
GROUP BY o.OrderDate
ORDER BY OrdersPerDay DESC;


SELECT ProductColor, COUNT(*) AS OrderedCount
FROM Sales_2022 od
JOIN Product p ON od.ProductKey = p.ProductKey
GROUP BY ProductColor
ORDER BY OrderedCount DESC;
