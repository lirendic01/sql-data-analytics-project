/*
===============================================================================
Date Range Exploration
===============================================================================
This script reviews the main date ranges in the Gold layer.

The goal is to understand the time period covered by the sales data and to check
the age range of the customers. This helps before doing time-based analysis,
such as trends, seasonality, or customer age analysis.

Main SQL concepts used:
    - MIN() to find the earliest date
    - MAX() to find the latest date
    - DATEDIFF() to calculate the difference between dates
===============================================================================
*/

-- Check the first and last order dates, and calculate the total sales period in months
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;

-- Check the oldest and youngest customers using their birthdates
SELECT
    MIN(birthdate) AS oldest_birthdate,
    DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers;
