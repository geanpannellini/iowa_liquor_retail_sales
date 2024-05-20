{{
    config(
        alias='dim_store',
        materialized='table'
    )
}}

WITH some_transformation AS (
    SELECT
        distinct
        store_number,
        store_name,
        address,
        city,
        zip_code,
        county_number,
        county
    FROM {{ ref('stg_sales') }}
    WHERE county_number IS NOT null
),

-- DEDUPLICATED
deduplicated_table AS(
SELECT
        store_number,
        store_name,
        address,
        city,
        zip_code,
        county_number,
        county,
        ROW_NUMBER() OVER (PARTITION BY store_number ORDER BY store_number, county_number DESC) AS row_num
FROM some_transformation
QUALIFY row_num = 1
)

SELECT
        store_number,
        store_name,
        address,
        city,
        zip_code,
        county_number,
        county
FROM deduplicated_table
-- TESTING
-- WHERE store_number = '4912' 
-- There is null data and duplicated store_number*/