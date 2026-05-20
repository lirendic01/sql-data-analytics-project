/*
===============================================================================
Change Over Time Analysis
===============================================================================
This script reviews how the main sales metrics change over time.

The goal is to analyze monthly sales behavior, customer activity, and quantity
sold across different periods. This is useful to identify trends, increases,
drops, or possible seasonality in the business.

Main SQL concepts used:
    - YEAR() and MONTH() to separate dates into year and month
    - DATETRUNC() to group dates at monthly level
    - FORMAT() to display dates in a more readable way
    - SUM() to calculate total sales and quantity
    - COUNT(DISTINCT) to count unique customers
    - GROUP BY to aggregate metrics by time period
    - ORDER BY to keep the results in chronological order
===============================================================================
*/

-- Review monthly sales performance using year and month separately
SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);

-- Review monthly sales performance using DATETRUNC
SELECT
    DATETRUNC(month, order_date) AS order_date,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month, order_date)
ORDER BY DATETRUNC(month, order_date);

-- Display monthly sales results using a formatted year-month label
SELECT
    FORMAT(order_date, 'yyyy-MMM') AS order_date,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM');
