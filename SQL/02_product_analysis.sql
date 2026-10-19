-- Superstore Data Analysis
-- 02: Product Performance by Sales

SELECT
    product_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity_sold
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

