SELECT Country,
       SUM(Quantity * UnitPrice) AS TotalRevenue
FROM orders_raw
GROUP BY Country
ORDER BY TotalRevenue DESC;
