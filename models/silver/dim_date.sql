{{
    config(
        alias='dim_date',
        materialized='table'
    )
}}

WITH source AS (
    SELECT distinct 
            date 
    FROM {{ ref('stg_sales') }}
),

date_details AS (
    SELECT
        date,
        EXTRACT(year FROM date) as year,
        EXTRACT(quarter FROM date) as quarter,
        EXTRACT(month FROM date) as month,
        EXTRACT(day FROM date) as day,
        format_date('%A', date) as day_of_week
    FROM source
)

SELECT * FROM date_details