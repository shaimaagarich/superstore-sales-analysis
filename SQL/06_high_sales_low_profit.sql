-- 06: Identify products with high sales but low profit

SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage
FROM superstore
GROUP BY product_name
HAVING SUM(sales) > 1000
ORDER BY profit_margin_percentage ASC
LIMIT 10;


What can we learn?

1. High sales do not guarantee profit

The Cubify CubeX Double Head 3D Printer generated $11,099.96 in sales but lost $8,879.97. This makes it an important product to investigate.

2. Profit margin helps us compare products

The Epson printer's margin is −87.18%. Based on the reported figures, its loss was about $87.18 for every $100 in sales.

3. These products need further investigation

We should review their selling prices, costs, discounts, and individual orders before recommending price changes. The query identifies a problem; it doesn't explain its cause.
