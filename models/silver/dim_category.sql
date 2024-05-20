{{
    config(
        alias='dim_category'
    )
}}

WITH source AS (
    SELECT distinct 
                category, 
                category_name 
    FROM {{ ref('stg_sales') }}
)

SELECT * FROM source