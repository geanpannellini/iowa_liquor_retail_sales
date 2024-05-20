-- Identify the top 10 stores with more revenue in sold products
SELECT
    store_name,
    SUM(sale_dollars) AS total_revenue
FROM {{ ref('sales') }}
GROUP BY store_name
ORDER BY total_revenue DESC
LIMIT 10

/* 

APPLYED DEDUPLICATION LOGIC, BUT IT DOESNT NEED!

WITH data AS (
SELECT
    store_name,
    SUM(sale_dollars) AS total_revenue
FROM {{ ref('sales') }}
GROUP BY store_name
)
-- deduplication
SELECT 
    store_name,
    total_revenue,
    ROW_NUMBER() OVER (PARTITION BY total_revenue ORDER BY total_revenue DESC) AS row_num
FROM data
QUALIFY row_num < 10
*/