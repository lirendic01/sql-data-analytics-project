/*
===============================================================================
Database Exploration
===============================================================================
This script is used as a first review of the database structure.

The goal is to understand what tables are available in the database and what
columns exist inside the main tables before starting the analysis.

In this step, I use INFORMATION_SCHEMA views to check metadata about tables,
schemas, column names, data types, and nullability.
===============================================================================
*/

-- Check the tables and views available in the current database
SELECT 
    TABLE_CATALOG, 
    TABLE_SCHEMA, 
    TABLE_NAME, 
    TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES;

-- Review the structure of the customer dimension table
SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    IS_NULLABLE, 
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers';
