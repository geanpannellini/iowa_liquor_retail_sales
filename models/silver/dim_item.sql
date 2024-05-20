{{
    config(
        alias='dim_item',
        materialized='table'
    )
}}

WITH source AS (
    SELECT distinct 
            item_number, 
            item_description 
    FROM {{ ref('stg_sales') }}
)

SELECT * FROM source