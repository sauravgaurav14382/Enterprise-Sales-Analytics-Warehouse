-- Top 10 Products by Revenue

SELECT TOP 10
    ProductName,
    SUM(SalesAmount) AS Revenue
FROM gold.fact_sales
GROUP BY ProductName
ORDER BY Revenue DESC;


-- Monthly Sales Trend

SELECT
    YEAR(OrderDate) AS Year,
    MONTH(OrderDate) AS Month,
    SUM(SalesAmount) AS Revenue
FROM gold.fact_sales
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY Year, Month;


