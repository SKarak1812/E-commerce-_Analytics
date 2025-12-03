SELECT TOP 10 
       StockCode,
       Description,
       SUM(Quantity) AS TotalQuantitySold
FROM orders_raw
GROUP BY StockCode, Description
ORDER BY TotalQuantitySold DESC;
