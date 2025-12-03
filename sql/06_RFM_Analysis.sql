WITH rfm AS (
    SELECT
        CustomerID,
        MAX(InvoiceDate) AS LastPurchase,
        COUNT(DISTINCT InvoiceNo) AS Frequency,
        SUM(TotalAmount) AS Monetary
    FROM orders_clean
    GROUP BY CustomerID
)
SELECT *,
    DATEDIFF(DAY, LastPurchase, (SELECT MAX(InvoiceDate) FROM orders_clean)) AS Recency
FROM rfm;
