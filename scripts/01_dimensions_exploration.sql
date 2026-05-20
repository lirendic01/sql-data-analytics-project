/*
===============================================================================
Dimensions Exploration
===============================================================================
This script reviews the main descriptive values in the Gold layer.

The goal is to understand the available dimension values, such as customer
countries and product hierarchy. This helps to see how the data is organized
before creating deeper business analysis.

Main SQL concepts used:
    - DISTINCT to return only unique values
    - ORDER BY to make the results easier to read
===============================================================================
*/

-- Check the different countries where customers are located
SELECT DISTINCT 
    country 
FROM gold.dim_customers
ORDER BY country;

-- Review the product hierarchy: category, subcategory, and product name
SELECT DISTINCT 
    category, 
    subcategory, 
    product_name 
FROM gold.dim_products
ORDER BY category, subcategory, product_name;
