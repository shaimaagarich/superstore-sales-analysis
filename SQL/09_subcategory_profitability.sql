SELECT
    "category",
    "sub_category",
    COUNT(*) AS number_of_records,
    ROUND(SUM("sales")::numeric, 2) AS total_sales,
    ROUND(SUM("sales")::numeric, 2) AS total_profit,
    ROUND(
        (SUM("profit") / NULLIF(SUM("sales"), 0) * 100)::numeric,
        2
    ) AS profit_margin_pct
FROM superstore
GROUP BY "category", "sub_category"
ORDER BY SUM("profit") ASC;


SELECT
    category,
    sub_category,
    COUNT(*) AS number_of_records,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0) * 100)::numeric,
        2
    ) AS profit_margin_pct
FROM superstore
WHERE sub_category IN ('Tables', 'Bookcases', 'Supplies')
GROUP BY category, sub_category
ORDER BY total_profit ASC;

