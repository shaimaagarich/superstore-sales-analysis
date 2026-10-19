-- 07: Analyze annual sales and profit trends

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage
FROM superstore
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY order_year;



What are the main insights?

1. Sales increased significantly
Sales rose from $484,247.56 in 2014 to $733,215.19 in 2017 — an increase of approximately 51.4% over the period.

2. 2017 had the highest sales and profit
Sales reached $733,215.19 and profit reached $93,439.27, the highest values among the four years.

3. The highest profit margin was in 2016
The margin peaked at 13.43% in 2016, then fell to 12.74% in 2017. So, although sales continued to grow, profitability relative to sales decreased slightly.
