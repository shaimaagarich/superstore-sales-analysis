##Superstore Sales Analysis
Project Overview
This project analyzes Superstore sales data to identify business trends, evaluate product profitability, compare regional performance, and provide data-driven business recommendations.
The project follows an end-to-end data analysis workflow using Microsoft Excel, PostgreSQL, SQL, and Power BI. The analysis covers key performance indicators (KPIs), sales and profit trends, category and regional performance, sub-category profitability, product-level losses, and the relationship between discounts and profitability.
An interactive Power BI dashboard presents the main findings through KPI cards, charts, and interactive filters.
Project goal: Transform raw sales data into meaningful business insights that support better decision-making.
Dataset
Records: 9,994 rows
Columns: 21
Date range: January 2014 – December 2017
Main information: Orders, customers, products, sales, quantities, discounts, and profits
The dataset contains sales transactions across product categories, sub-categories, customer segments, and regions.
Tools Used
Microsoft Excel: Data exploration, data-quality checks, PivotTables, charts, and KPI analysis.
PostgreSQL: Database storage and querying.
SQL: KPI calculations, trend analysis, product and category profitability, regional performance, and discount analysis.
Power BI: Interactive dashboard, KPI cards, charts, and slicers.
Data Quality and Preparation
Reviewed the dataset for missing values, invalid values, and inconsistencies.
Checked repeated Order IDs and recognized that one order can contain multiple product records.
Preserved all 9,994 original rows to avoid removing valid transaction details.
Retained negative profit values because they represent potential business losses rather than automatically invalid records.
Used distinct Order IDs when calculating the total number of orders.
Key Performance Indicators (KPIs)
KPI	Result
Total Sales	$2,297,200.86
Total Profit	$286,397.02
Total Orders	5,009
Average Order Value	$458.62
Overall Profit Margin	12.47%
Note: Small differences may occur between tools due to rounding or calculation precision.
Key Findings
Sales and Regional Performance
Technology generated the highest sales among the three main product categories.
The West region had the highest sales and profit.
Annual sales increased from approximately $484,247.56 in 2014 to $733,215.19 in 2017, an increase of approximately 51.4%.
Annual profit also increased over the same period, from $49,543.97 in 2014 to $93,439.27 in 2017.
Product and Category Performance
Phones generated the highest sales among product sub-categories.
Copiers generated the highest profit among product sub-categories.
Tables recorded the largest sub-category loss, despite generating substantial sales.
Technology had the highest profit margin among the three main categories.
Furniture had a relatively low profit margin compared with Technology and Office Supplies.
Sub-Category Profitability
The analysis identified the following loss-making sub-categories:
Sub-Category	Sales	Profit
Tables	$206,965.68	-$17,725.48
Bookcases	$114,880.05	-$3,472.56
Supplies	$46,673.52	-$1,189.10
These results show that high sales do not necessarily lead to positive profit.
Product-Level Profitability
The product-level analysis highlighted several products with more than $1,000 in sales that recorded significant losses:
Cubify CubeX 3D Printer Double Head Print: $11,099.96 in sales and a loss of $8,879.97 (profit margin: -80%).
Lexmark MX611dhe Monochrome Laser Printer: $16,829.90 in sales and a loss of $4,589.97.
Cubify CubeX 3D Printer Triple Head Print: $7,999.98 in sales and a loss of $3,839.99.
Several products in the Machines and Tables sub-categories also appeared among the least profitable products meeting the sales threshold.
Sales and Profit Trends (2014–2017)
Year	Sales	Profit	Profit Margin
2014	$484,247.56	$49,543.97	10.23%
2015	$470,532.46	$61,618.60	13.10%
2016	$609,205.86	$81,795.17	13.43%
2017	$733,215.19	$93,439.27	12.74%
Sales and profit reached their highest annual values in 2017.
The highest annual profit margin was 13.43% in 2016.
Although sales and profit increased in 2017, the profit margin decreased to 12.74%, showing why revenue growth should be evaluated alongside profitability.
Discount Analysis
The SQL analysis compared profit margins across discount levels and product categories. It found that some high-discount groups were associated with negative profits.
Examples from the analyzed data include:
Furniture: The profit margin was 22.71% with no discount and -10.75% at a 30% discount.
Office Supplies: The profit margin was 16.32% at a 20% discount; some groups at 70% and 80% discounts recorded negative profits.
Technology: The profit margin was 14.62% at a 20% discount and -9.70% at a 40% discount.
These patterns indicate that profitability varies across discount levels and categories. They do not prove that discounts alone caused the losses. Product costs, product mix, and transaction-level factors should also be investigated.
Business Recommendations
Based on the analysis, the business should consider the following actions:
Investigate loss-making products: Review costs, selling prices, discount levels, and order-level profitability for Tables and other products with negative profit.
Review discount policies: Evaluate the profitability of discounts by product and category before applying large discounts.
Improve Furniture profitability: Investigate the products and transactions contributing to the category's relatively low profit margin.
Monitor revenue and profit together: Track sales growth alongside profit and profit margin to support sustainable performance.
Use regional insights: Continue monitoring regional sales and profit to identify practices that may be worth investigating in other regions.
These are recommendations for further investigation; the analysis does not establish causation.
Power BI Dashboard
The interactive Power BI report contains two pages:
1. Superstore Sales Dashboard
KPI cards for Total Sales, Total Profit, Total Orders, and Profit Margin
Sales by Category
Profit by Region
Profit by Sub-Category
Additional visual analysis and interactive filters
2. Sales Trends Analysis
Monthly Sales Trend
Sales by Year
Profit Margin by Year
Sales by Region
Year and Category slicers
The dashboard allows users to explore business performance across different years and categories.
> **Screenshots:** Add screenshots of both dashboard pages here after uploading the images to the repository. For example, place image files in a `screenshots/` folder and embed them using Markdown image links.
Project Structure
The repository includes Excel analysis files, SQL scripts, and project documentation. Update this example if your actual folder or file names differ.
```text
superstore-sales-analysis/
├── Excel/
├── SQL/
├── README.md
└── screenshots/  
```
Project Status
[x] Excel data exploration and analysis
[x] PostgreSQL database setup and data import
[x] SQL KPI calculations and business analysis
[x] Category, regional, sub-category, and product profitability analysis
[x] Discount analysis
[x] Sales and profit trends analysis (2014–2017)
[x] Interactive Power BI dashboard with two pages
[x] Dashboard slicers tested
[ ] Add dashboard screenshots to the repository
[ ] Final review of repository structure and documentation
[ ] Prepare portfolio presentation
Conclusion
The analysis shows that Superstore's sales and profits grew overall between 2014 and 2017. However, profitability differed across categories, regions, sub-categories, products, and discount levels. In particular, Tables and several individual products generated losses despite having sales revenue.
Combining Excel, SQL, PostgreSQL, and Power BI made it possible to calculate KPIs, investigate performance patterns, and present findings in an interactive dashboard. The results can help guide further investigation into pricing, costs, discounts, and product profitability.
Skills Demonstrated
Data exploration and data-quality checks
KPI calculation and business analysis
SQL querying and aggregation
Profitability and discount analysis
Trend and regional performance analysis
Data visualization and dashboard development
Translating analytical findings into business recommendations
