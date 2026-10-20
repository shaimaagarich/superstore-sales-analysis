SELECT
    "sub_category",
    "discount",
    COUNT(*) AS number_of_records,
    ROUND(SUM("sales")::numeric, 2) AS total_sales,
    ROUND(SUM("profit")::numeric, 2) AS total_profit,
    ROUND(
        (SUM("profit") / NULLIF(SUM("sales"), 0) * 100)::numeric,
        2
    ) AS profit_margin_pct
FROM superstore
WHERE "sub_category" = 'Tables'
GROUP BY "sub_category", "discount"
ORDER BY "discount";


Business Insight — Discount Analysis
The analysis shows a strong negative association between discount levels and profitability in the Tables sub-category. At 0% discount, the profit margin was 18.55%. At a 50% discount, 
  it fell to -63.00%, generating a loss of $8,615.39. The business should review its discounting strategy for Tables products to reduce losses while maintaining competitive pricing.
