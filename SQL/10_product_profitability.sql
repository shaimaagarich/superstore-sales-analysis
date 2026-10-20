
SELECT
    product_name,
    category,
    sub_category,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_pct
FROM superstore
GROUP BY product_name, category, sub_category
HAVING SUM(sales) > 1000
ORDER BY SUM(profit) ASC
LIMIT 10;

