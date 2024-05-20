{{
    config(
        alias='stg_sales'
    )
}}

WITH some_transformation AS(
SELECT
    invoice_and_item_number,
    CAST(date AS DATE) AS date,
    store_number,
    store_name,
    address,
    city,
    zip_code AS zip_code,
    CAST(store_location AS GEOGRAPHY) AS store_location,
    county_number,
    county,
    category,
    category_name,
    vendor_number,
    vendor_name,
    item_number,
    item_description,
    CAST(pack AS INTEGER) AS pack,
    CAST(bottle_volume_ml AS INTEGER) AS bottle_volume_ml,
    CAST(state_bottle_cost AS FLOAT64) AS state_bottle_cost,
    CAST(state_bottle_retail AS FLOAT64) AS state_bottle_retail,
    CAST(bottles_sold AS INTEGER) AS bottles_sold,
    CAST(sale_dollars AS FLOAT64) AS sale_dollars,
    CAST(volume_sold_liters AS FLOAT64) AS volume_sold_liters,
    CAST(volume_sold_gallons AS FLOAT64) AS volume_sold_gallons

FROM {{ source('iowa_liquor','sales') }} 

)

SELECT * FROM some_transformation 

-- WHERE store_number  LIKE '%-%'
-- WHERE invoice_and_item_number = 'INV-59246400001'