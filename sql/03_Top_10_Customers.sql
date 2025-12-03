SELECT TOP 10 
       CustomerID,
       SUM(Quantity * UnitPrice) AS TotalRevenue
FROM orders_raw
GROUP BY CustomerID
ORDER BY TotalRevenue DESC;
