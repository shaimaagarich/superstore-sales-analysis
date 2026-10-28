# Superstore Sales Analysis

## Project Overview

This project analyzes Superstore sales data to identify business trends, evaluate product profitability, compare regional performance, and provide data-driven business recommendations.

The project follows an end-to-end data analysis workflow using Microsoft Excel, PostgreSQL, SQL, and Power BI.

The analysis covers key performance indicators (KPIs), sales and profit trends, category and regional performance, sub-category profitability, product-level losses, and the relationship between discounts and profitability.

An interactive Power BI dashboard presents the main findings through KPI cards, charts, and interactive filters.

**Project Goal:** Transform raw sales data into meaningful business insights that support better decision-making.

## Dataset

- **Number of records:** 9,994
- **Number of columns:** 21
- **Date range:** January 2014 – December 2017
- **Main information:** Orders, customers, products, sales, quantities, discounts, and profits.

The dataset contains sales transactions across different product categories, sub-categories, customer segments, and regions.

## Tools and Technologies

- **Microsoft Excel:** Data exploration, data quality checks, PivotTables, charts, and KPI analysis.
- **PostgreSQL:** Database creation, data storage, and querying.
- **SQL:** KPI calculations, trend analysis, regional performance, product profitability, and discount analysis.
- **Power BI:** Interactive dashboard, KPI cards, charts, and slicers.

## Data Quality and Preparation

- Reviewed the dataset for missing values, invalid values, and inconsistencies.
- Checked repeated Order IDs and confirmed that one order can contain multiple product records.
- Preserved all 9,994 original rows to avoid removing valid transaction details.
- Retained negative profit values because they represent potential business losses rather than automatically invalid records.
- Used distinct Order IDs to calculate the total number of orders.

## Key Performance Indicators (KPIs)

| KPI | Result |
|---|---:|
| Total Sales | $2,297,200.86 |
| Total Profit | $286,397.02 |
| Total Orders | 5,009 |
| Average Order Value | $458.62 |
| Overall Profit Margin | 12.47% |

*Note: Minor differences may occur between tools because of rounding or calculation precision.*

## Key Business Insights

### 1. Sales and Regional Performance

- Technology generated the highest sales among the three main product categories.
- The West region had the highest sales and profit.
- Annual sales increased from $484,247.56 in 2014 to $733,215.19 in 2017, an increase of approximately 51.4%.
- Annual profit increased from $49,543.97 in 2014 to $93,439.27 in 2017.

### 2. Product and Category Performance

- Phones generated the highest sales among product sub-categories.
- Copiers generated the highest profit among product sub-categories.
- Tables recorded the largest loss among the sub-categories, despite generating substantial sales.
- Technology had the highest profit margin among the three main categories.
- Furniture had a relatively low profit margin compared with Technology and Office Supplies.

### 3. Sub-Category Profitability Analysis

The analysis identified three sub-categories with negative total profit.

| Sub-Category | Total Sales | Total Profit |
|---|---:|---:|
| Tables | $206,965.68 | -$17,725.48 |
| Bookcases | $114,880.05 | -$3,472.56 |
| Supplies | $46,673.52 | -$1,189.10 |

**Key insight:** High sales do not necessarily guarantee profitability. Tables generated substantial revenue but recorded the largest loss among the analyzed sub-categories.

**Business recommendation:** Investigate product costs, selling prices, discount levels, and order-level profitability for these sub-categories.

### 4. Product-Level Profitability Analysis

The product-level analysis identified several products with more than $1,000 in total sales that generated significant losses.

- **Cubify CubeX 3D Printer Double Head Print:** $11,099.96 in sales and a loss of $8,879.97, with a profit margin of -80%.
- **Lexmark MX611dhe Monochrome Laser Printer:** $16,829.90 in sales and a loss of $4,589.97.
- **Cubify CubeX 3D Printer Triple Head Print:** $7,999.98 in sales and a loss of $3,839.99.

Several products in the Machines and Tables sub-categories also appeared among the least profitable products meeting the sales threshold.

**Business recommendation:** Review product costs, pricing, discounts, and transaction-level profitability before making decisions about product availability or pricing.

### 5. Sales and Profit Trends (2014–2017)

| Year | Sales | Profit | Profit Margin |
|---|---:|---:|---:|
| 2014 | $484,247.56 | $49,543.97 | 10.23% |
| 2015 | $470,532.46 | $61,618.60 | 13.10% |
| 2016 | $609,205.86 | $81,795.17 | 13.43% |
| 2017 | $733,215.19 | $93,439.27 | 12.74% |

**Key findings:**

- Sales and profit reached their highest annual values in 2017.
- The highest annual profit margin was 13.43% in 2016.
- Although sales and profit increased in 2017, the profit margin decreased to 12.74%.

**Business recommendation:** Monitor revenue growth alongside profit and profit margin to ensure sustainable business performance.

### 6. Discount Analysis

The SQL analysis examined the relationship between discount levels and profit margins across product categories.

Examples from the analyzed dataset include:

- **Furniture:** Profit margin was 22.71% with no discount and -10.75% at a 30% discount.
- **Office Supplies:** Profit margin was 16.32% at a 20% discount. Some groups at 70% and 80% discounts recorded negative profits.
- **Technology:** Profit margin was 14.62% at a 20% discount and -9.70% at a 40% discount.

**Key insight:** Some high-discount groups were associated with negative profitability, but the relationship varies by category and discount level.

**Business recommendation:** Review discount policies and investigate product costs, sales conditions, and transaction-level profitability before applying large discounts.

**Important limitation:** These findings show an association between discount levels and profitability. They do not prove that discounts alone caused the losses.

## Business Recommendations

Based on the analysis, the following actions could support better business decisions:

1. **Investigate loss-making products:** Review the costs, prices, discounts, and order-level profitability of Tables and other products with negative profit.
2. **Review discount policies:** Evaluate profitability by product and category before applying large discounts.
3. **Improve Furniture profitability:** Investigate the products and transactions contributing to the category's relatively low profit margin.
4. **Monitor sales and profit together:** Track sales growth alongside profit and profit margin.
5. **Evaluate regional performance:** Continue monitoring regional sales and profitability to identify areas for further investigation.
6. **Use data-driven decisions:** Combine revenue, costs, discounts, and profit indicators rather than relying on sales alone.

These recommendations identify areas for further investigation; the analysis does not establish causation.

## Power BI Dashboard

The interactive Power BI report contains two pages.

### Page 1: Superstore Sales Dashboard

The first page provides an overview of business performance through:

- Total Sales KPI
- Total Profit KPI
- Total Orders KPI
- Profit Margin KPI
- Sales by Category
- Profit by Region
- Profit by Sub-Category
- Additional visual analysis and interactive filters

### Page 2: Sales Trends Analysis

The second page focuses on business performance over time and across regions through:

- Monthly Sales Trend
- Sales by Year
- Profit Margin by Year
- Sales by Region
- Year slicer
- Category slicer

The interactive filters allow users to explore the results by year and product category.

## SQL Analysis

SQL was used to answer business questions and calculate key performance indicators, including:

- What are the total sales, total profit, and number of orders?
- Which product categories generate the highest sales?
- Which regions perform best in sales and profit?
- Which sub-categories generate the largest losses?
- Which individual products are the least profitable?
- How do sales, profit, and profit margin change over time?
- How are discount levels associated with profitability?

The analysis uses SQL aggregation, grouping, filtering, date-based analysis, and profitability calculations in PostgreSQL.

## Project Structure

The repository is organized into folders for the analysis files and project documentation.

```text
superstore-sales-analysis/
├── Excel/
├── SQL/
├── Data/
├── PowerBi/
└── README.md
```

## Skills Demonstrated

- Data exploration and data quality assessment
- Excel analysis and PivotTables
- PostgreSQL database management
- SQL querying, filtering, grouping, and aggregation
- KPI calculation and business performance analysis
- Sales trend and regional analysis
- Product and sub-category profitability analysis
- Discount and profit margin analysis
- Power BI dashboard development
- Data visualization and interactive filtering
- Translating analytical findings into business recommendations

## Conclusion

This project demonstrates an end-to-end data analysis workflow using Excel, PostgreSQL, SQL, and Power BI.

The analysis shows that Superstore's sales and profits grew overall between 2014 and 2017. However, profitability differed across categories, regions, sub-categories, products, and discount levels. In particular, Tables and several individual products generated losses despite recording sales revenue.

By combining data exploration, SQL analysis, KPI calculations, and interactive visualization, the project transforms raw sales data into actionable business insights.

The findings highlight the importance of monitoring profitability alongside revenue and investigating product costs, pricing, and discount policies to support better business decisions.

---

**Tools:** Microsoft Excel | PostgreSQL | SQL | Power BI

**Project Type:** Data Analysis | Business Intelligence | Data Visualization

**Role:** Data Analyst Portfolio Project
