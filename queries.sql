create table online_retail (
InvoiceNo varchar(100),
StockCode varchar(100),
Description text,
Quantity int,
InvoiceDate timestamp,
UnitPrice numeric(10,4),
CustomerID int,
Country varchar(20)
);

 select * from online_retail;

 # CLEAN THE DATA 
 -- Remove nulls from key columns
SELECT *
FROM ONLINE_RETAIL
WHERE InvoiceNo IS NOT NULL
  AND StockCode IS NOT NULL
  AND Quantity > 0
  AND UnitPrice > 0
  AND InvoiceDate IS NOT NULL;

-- Assuming cost is 75% of UnitPrice (i.e., 25% profit margin)
SELECT 
    StockCode,
    Description,
    SUM(UnitPrice * Quantity) AS Revenue,
    SUM((UnitPrice - UnitPrice * 0.75) * Quantity) AS Profit
FROM online_retail
GROUP BY StockCode, Description;





























