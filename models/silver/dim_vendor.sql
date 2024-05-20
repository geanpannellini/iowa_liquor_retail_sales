{{
    config(
        alias='dim_vendor'
    )
}}

WITH some_transformation AS(
SELECT distinct 
        vendor_number, 
        vendor_name
FROM {{ ref('stg_sales') }}
)
-- DEDUPLICATED
SELECT distinct 
        vendor_number, 
        vendor_name,
        ROW_NUMBER() OVER (PARTITION BY vendor_number ORDER BY vendor_name DESC) AS row_num
FROM some_transformation
QUALIFY row_num = 1

-- TESTING
/* 
vendor_number = '421'
vendor_name = SAZERAC CO., INC.
vendor_name = SAZERAC COMPANY INC
*/