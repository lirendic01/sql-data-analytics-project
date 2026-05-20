# SQL Data Analytics Project

## Overview

This project focuses on business data analysis using SQL Server and T-SQL.

The goal was to analyze a Gold layer dataset and practice common SQL techniques used in data analytics, including exploratory analysis, sales trends, customer segmentation, product performance, and reporting views.

This project complements my Data Warehouse project by focusing more on analytical queries and business insights.

## Tools Used

- SQL Server
- T-SQL
- GitHub
- CSV files

## Repository Structure

```text
sql-data-analytics-project/
├── datasets/
│   └── csv-files/
│       ├── gold.dim_customers.csv
│       ├── gold.dim_products.csv
│       ├── gold.fact_sales.csv
│       ├── gold.report_customers.csv
│       └── gold.report_products.csv
├── docs/
│   └── project_notes.md
├── scripts/
│   ├── 00_database_exploration.sql
│   ├── 01_dimensions_exploration.sql
│   ├── 02_date_exploration.sql
│   ├── 03_measures_exploration.sql
│   ├── 04_magnitude_analysis.sql
│   ├── 05_ranking_analysis.sql
│   ├── 06_changes_over_time.sql
│   ├── 07_cumulative_analysis.sql
│   ├── 08_performance_analysis.sql
│   ├── 09_part_to_whole_analysis.sql
│   ├── 10_data_segmentation.sql
│   ├── 11_report_customers.sql
│   └── 12_report_products.sql
└── README.md
```

## Analysis Covered

This project includes different types of SQL analysis commonly used in data analytics:

- Database and table exploration
- Dimension and date exploration
- Key business metrics
- Sales magnitude analysis
- Product and customer ranking
- Sales trends over time
- Cumulative sales analysis
- Year-over-year product performance
- Part-to-whole analysis by category
- Customer and product segmentation
- Final customer and product reporting views

## Main SQL Concepts Practiced

- Joins
- Aggregations
- Common Table Expressions
- Window functions
- Ranking functions
- Date functions
- CASE statements
- Views
- Business KPIs

## Final Outputs

The project creates two main reporting views:

- `gold.report_customers`: customer-level metrics, segmentation, recency, average order value, and monthly spending.
- `gold.report_products`: product-level metrics, product segmentation, sales performance, recency, and monthly revenue.

These views can be used as a base for dashboards, reporting, or further analysis.

## Key Learning

This project helped me practice how to turn business data into useful analytical outputs using SQL.

I also learned how to organize SQL scripts in a clear workflow, starting from database exploration and ending with reporting views.

## Credits

This project was developed as part of my SQL learning path, following the SQL Data Analytics Project by Data With Baraa to improve my SQL skills for data analytics and reporting.
