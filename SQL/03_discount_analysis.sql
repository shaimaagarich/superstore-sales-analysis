-- 03: Analyze the impact of discounts on Tables

SELECT
    discount,
    COUNT(*) AS number_of_records,
    COUNT(DISTINCT order_id) AS number_of_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage
FROM superstore
WHERE sub_category = 'Tables'
GROUP BY discount
ORDER BY discount ASC;


Tables recorded negative profit at discount levels of 30%, 40%, 45%, and 50%. 
The 40% discount group had the largest total loss among the groups observed, at $16,187.40.
Further analysis is needed to determine how discounting relates to overall product profitability.
