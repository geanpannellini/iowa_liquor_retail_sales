{{
    config(
        alias='fact_sales'
    )
}}

SELECT
    invoice_and_item_number,
    date,
    store_number,
    category,
    vendor_number,
    item_number,
    pack,
    bottle_volume_ml,
    state_bottle_cost,
    state_bottle_retail,
    bottles_sold,
    sale_dollars,
    volume_sold_liters,
    volume_sold_gallons
FROM
    {{ ref('stg_sales') }}

-- WHERE invoice_and_item_number = 'INV-59246400001'