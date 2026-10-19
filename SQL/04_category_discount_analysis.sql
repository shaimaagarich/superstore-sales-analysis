-- 04: Analyze profitability by discount level

SELECT
    category,
    discount,
    COUNT(*) AS number_of_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales), 0) * 100,
        2
    ) AS profit_margin_percentage
FROM superstore
GROUP BY category, discount
ORDER BY category, discount;


What is our business conclusion?
We can now record three findings:
1. Furniture: Discount groups of 30% and above in your results are loss-making.
2. Office Supplies: The 70% and 80% discount groups show substantial losses.
3. Technology: The 40%, 50%, and 70% discount groups show negative profit.
  
These patterns suggest that discount policies deserve review. However, we cannot yet conclude that discounts alone caused the losses. 
  We also need to consider product costs, sales mix, and the number of records in each group.
