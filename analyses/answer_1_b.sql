--  Identify the month where the revenue sold was 10% above the average.
WITH monthly_revenue AS (
    SELECT
        {{ define_monthly(date) }} AS month,
        SUM(sale_dollars) AS revenue
    FROM {{ ref('sales') }}
    GROUP BY month
)

SELECT
    month,
    revenue
FROM monthly_revenue
WHERE revenue > (SELECT AVG(revenue) * 1.1 FROM monthly_revenue)