# Superstore Sales Analysis

## Project Overview

This project analyzes Superstore sales data to identify sales trends, evaluate product profitability, compare regional performance, and generate actionable business recommendations.

The project uses a step-by-step data analysis workflow, starting with Microsoft Excel and continuing with PostgreSQL and SQL. Power BI will be used to build an interactive dashboard in a later stage.

## Dataset

- **Number of records:** 9,994
- **Number of columns:** 21
- **Main information:** Orders, customers, products, sales, quantities, discounts, and profits.

## Tools Used

- **Microsoft Excel:** Data exploration, cleaning, PivotTables, charts, and KPI analysis.
- **PostgreSQL:** Database storage and data querying.
- **SQL:** KPI calculations, product performance, category profitability, and discount analysis.
- **Power BI:** Planned interactive dashboard and data visualization.

## Data Quality and Cleaning

- Reviewed the dataset for missing values, invalid values, and inconsistent data.
- Checked for duplicate records and confirmed that repeated Order IDs can represent multiple products within the same order.
- Preserved all 9,994 original rows to avoid removing valid sales records.
- Identified negative profit values, which represent potential losses rather than invalid data.

## Key Performance Indicators (KPIs)

- **Total Sales:** $2,297,200.86
- **Total Profit:** $286,397.02
- **Total Orders:** 5,009
- **Average Order Value:** $458.62
- **Overall Profit Margin:** 12.47%

## Key Insights

### Sales and Regional Performance

- Technology generated the highest sales among the three product categories.
- The West region had the highest sales and profit.
- Annual sales increased from approximately $484,247 in 2014 to $733,215 in 2017, an increase of approximately 51.4%..

### Product Performance

- Phones generated the highest sales among product sub-categories.
- Copiers generated the highest profit.
- Tables recorded the largest loss among the sub-categories, despite generating significant sales.

### Profitability and Discounts

- Technology had the highest profit margin among the three main categories.
- Furniture had a relatively low profit margin compared with Technology and Office Supplies.
- SQL analysis identified negative profits for Tables, Bookcases, and Supplies.
- Initial discount analysis suggests that some high-discount groups are associated with negative profits. Further investigation is needed before concluding that discounts alone caused these losses.

## Recommendations

- Investigate the costs, pricing, and discount policies associated with loss-making products, especially Tables.
- Explore opportunities to improve Furniture profitability.
- Continue monitoring product and regional performance.
- Evaluate discount levels alongside sales volume and profit margins before making pricing decisions.

## Project Structure

- `Excel/` — Excel analysis, charts, and findings.
- `SQL/` — SQL scripts for KPI calculations and business analysis.
- `README.md` — Project overview, key findings, and recommendations.

*Folder names may be adjusted to match the final repository structure.*

## Project Status

- [x] Excel analysis completed
- [x] PostgreSQL database setup and data import
- [x] Initial SQL KPI analysis
- [x] Product, category, and discount analysis started
- [ ] Complete SQL analysis and document findings
- [ ] Build an interactive Power BI dashboard
- [ ] Finalize project documentation and portfolio presentation

## SQL Analysis: Impact of Discounts on Profitability

### Objective
Analyze the relationship between discount levels and profit margins across Furniture, Office Supplies, and Technology.

### Key Findings
- Furniture: Profit margin decreases from 22.71% with no discount to -10.75% at a 30% discount.
- Office Supplies: Profit margin remains positive at 16.32% with a 20% discount, but becomes negative at discounts of 70% and 80%.
- Technology: Profit margin is 14.62% at a 20% discount and -9.70% at a 40% discount.

### Business Recommendation
Review discount policies by product category and investigate high-discount transactions that generate losses. Consider product costs, sales volume, and other factors before adjusting pricing policies.

### Conclusion
Discount levels are associated with substantial differences in profitability. Further analysis is needed to identify loss-making products and develop appropriate pricing strategies.


### Sub-Category Profitability Analysis

**Objective:** Identify the product sub-categories generating the largest financial losses.

**Key findings:**
- Tables generated $206,965.68 in sales but recorded a loss of $17,725.48, resulting in a profit margin of -8.56%.
- Bookcases generated $114,880.05 in sales and a loss of $3,472.56.
- Supplies generated $46,673.52 in sales and a loss of $1,189.10.

**Business recommendation:** Prioritize an investigation of Tables products by reviewing discount levels, product costs, and pricing strategies. Investigate Bookcases and Supplies as well to identify opportunities to improve profitability.

**Conclusion:** High sales do not necessarily guarantee profitability. Businesses should evaluate both sales revenue and profit when making product and pricing decisions.


### Product-Level Profitability Analysis

**Objective:** Identify products with more than $1,000 in total sales that generate the largest financial losses.

**Key findings:**
- The Cubify CubeX 3D Printer Double Head Print recorded $11,099.96 in sales and a loss of $8,879.97, with a profit margin of -80%.
- The Lexmark MX611dhe Monochrome Laser Printer generated $16,829.90 in sales but recorded a loss of $4,589.97.
- The Cubify CubeX 3D Printer Triple Head Print recorded $7,999.98 in sales and a loss of $3,839.99.
- Several products in the Machines and Tables sub-categories appear among the 10 least profitable products meeting the sales threshold.

**Business recommendation:** Investigate the discount levels, costs, and order-level profitability of these products. Consider reviewing pricing and discount policies before making decisions about product availability.

**Conclusion:** Revenue alone is not a sufficient measure of product performance. Product-level profitability analysis helps businesses identify products that may require pricing or cost-management changes.


### Sales and Profit Trends Analysis (2014–2017)

**Objective:** Analyze annual sales, profit, and profit margins to evaluate business performance over time.

**Key findings:**
- Sales increased from $484,247.56 in 2014 to $733,215.19 in 2017.
- Annual profit increased from $49,543.97 to $93,439.27 over the same period.
- The highest profit margin was 13.43% in 2016.
- In 2017, the business achieved its highest annual sales and profit, although its profit margin decreased to 12.74%.

**Business recommendation:** Continue monitoring sales growth alongside profit margins to ensure that increasing revenue translates into sustainable profitability.

**Conclusion:** The business experienced overall growth between 2014 and 2017, with rising annual profit and a strong increase in sales.
