/*
===============================================================================
Part-to-Whole Analysis
===============================================================================
This script analyzes how each product category contributes to total sales.

The goal is to compare the sales of each category against the overall sales
amount. This helps identify which categories represent the largest share of
revenue and which ones have a smaller impact on the business.

Main SQL concepts used:
    - SUM() to calculate sales by category
    - SUM() OVER() to calculate the overall sales total
    - CAST() to avoid integer division when calculating percentages
    - ROUND() to format the percentage result
===============================================================================
*/

-- Calculate the percentage of total sales contributed by each product category
WITH category_sales AS (
    SELECT
        p.category,
        SUM(f.sales_amount) AS total_sales
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_products p
        ON p.product_key = f.product_key
    GROUP BY p.category
)
SELECT
    category,
    total_sales,
    SUM(total_sales) OVER () AS overall_sales,
    ROUND((CAST(total_sales AS FLOAT) / SUM(total_sales) OVER ()) * 100, 2) AS percentage_of_total
FROM category_sales
ORDER BY total_sales DESC;
