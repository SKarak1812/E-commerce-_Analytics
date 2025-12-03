SELECT CAST(InvoiceDate AS DATE) AS OrderDate,
       SUM(Quantity * UnitPrice) AS DailyRevenue
FROM orders_raw
GROUP BY CAST(InvoiceDate AS DATE)
ORDER BY OrderDate ASC;
