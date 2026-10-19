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
- Annual sales increased from approximately $484,247 in 2018 to $733,215 in 2021.

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
