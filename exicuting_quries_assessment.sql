-- -- Count records
-- SELECT 'customers' as table_name, COUNT(*) as record_count FROM customers
-- UNION ALL
-- SELECT 'orders', COUNT(*) FROM orders
-- UNION ALL  
-- SELECT 'products', COUNT(*) FROM products;


--task Q1: Total monthly sales with Month-over-Month (MoM) growth
-- SELECT
--     to_char(month, 'YYYY-MM') AS month,
--     total_sales,
--     ROUND(
--         (total_sales - LAG(total_sales) OVER (ORDER BY month))
--         / LAG(total_sales) OVER (ORDER BY month) * 100,
--         2
--     ) AS mom_growth_pct
-- FROM (
--     SELECT
--         date_trunc('month', order_date) AS month,
--         SUM(order_value) AS total_sales
--     FROM orders
--     GROUP BY date_trunc('month', order_date)
-- ) t
-- ORDER BY month;

-- -- Q2: Top 5 customers
-- SELECT c.customer_name, SUM(o.order_value) as total_spent
-- FROM customers c 
-- JOIN orders o ON c.customer_id = o.customer_id
-- GROUP BY c.customer_id, c.customer_name
-- ORDER BY total_spent DESC LIMIT 5;

-- -- Q3: Products never ordered
-- SELECT p.product_id, p.product_name
-- FROM products p
-- LEFT JOIN order_items oi ON p.product_id = oi.product_id
-- WHERE oi.product_id IS NULL;

-- -- Q4: Average order value by city with ranking
-- SELECT 
--     c.city,
--     AVG(o.order_value) as avg_order_value,
--     DENSE_RANK() OVER (ORDER BY AVG(o.order_value) DESC) as city_rank
-- FROM customers c
-- JOIN orders o ON c.customer_id = o.customer_id
-- GROUP BY c.city
-- ORDER BY avg_order_value DESC;

-- -- Q5: Customers with >3 orders in last 6 months
SELECT
    c.customer_id,
    c.customer_name
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_date >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY
    c.customer_id,
    c.customer_name
HAVING COUNT(o.order_id) > 3;