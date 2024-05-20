-- List the counties where the amount (in dollars) of purchases transactions went over $100K.
SELECT
    county,
    SUM(sale_dollars) AS total_sales
FROM {{ ref('sales') }}

GROUP BY county
HAVING SUM(sale_dollars) > 100000
ORDER BY total_sales DESC