-- Calculate the total products and revenue sold over time by quarter
SELECT
    {{ define_quarterly(date) }} AS quarter,
    COUNT(item_number) AS total_products_sold,
    SUM(sale_dollars) AS total_revenue
FROM
    {{ ref('sales') }}
WHERE 
    EXTRACT(year FROM date) = 2023
GROUP BY
    quarter
ORDER BY
    quarter