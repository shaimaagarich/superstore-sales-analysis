-- 05: Analyze profitability by sub-category

SELECT
    category,
    sub_category,
    COUNT(*) AS number_of_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage,
    ROUND(AVG(discount) * 100, 2) AS average_discount_percentage
FROM superstore
GROUP BY category, sub_category
ORDER BY profit_margin_percentage ASC;


The average discount percentages:
- Tables: 26.13%
- Bookcases: 21.11%
- Supplies: 7.68%
- Chairs: 17.02%
- Storage: 7.47%
Tables and Bookcases have both high average discounts and negative profit margins. This suggests that discount policies may be worth investigating.

However, this does not prove that discounts alone caused the losses. Product costs, shipping, and other factors could also contribute.
