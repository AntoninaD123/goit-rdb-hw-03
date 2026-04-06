CREATE DATABASE hw3_db;
USE hw3_db;
SELECT * FROM products;
SELECT name, phone FROM shippers; 
SELECT 
    AVG(price) AS avg_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM products; 

SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10; 

SELECT COUNT(*) AS total_products
FROM products
WHERE price BETWEEN 20 AND 100; 

SELECT
    supplier_id,
    COUNT(*) AS total_products,
    AVG(price) AS avg_price
FROM products
GROUP BY supplier_id;