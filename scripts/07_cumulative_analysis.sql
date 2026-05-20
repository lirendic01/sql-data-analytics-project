/*
===============================================================================
Cumulative Analysis
===============================================================================
This script reviews accumulated sales results over time.

The goal is to calculate the running total of sales and observe how the business
has grown across the years. It also includes a moving average of price to compare
how the average selling price changes over time.

Main SQL concepts used:
    - SUM() OVER() to calculate accumulated sales
    - AVG() OVER() to calculate a moving average
    - DATETRUNC() to group dates by year
    - GROUP BY to summarize the data before applying window functions
===============================================================================
*/

-- Calculate yearly sales and show the accumulated sales over time
SELECT
    order_date,
    total_sales,
    SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales,
    AVG(avg_price) OVER (ORDER BY order_date) AS moving_average_price
FROM
(
    SELECT 
        DATETRUNC(year, order_date) AS order_date,
        SUM(sales_amount) AS total_sales,
        AVG(price) AS avg_price
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATETRUNC(year, order_date)
) t;
