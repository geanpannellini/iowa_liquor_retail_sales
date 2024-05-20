{{
    config(
        alias='sales'
    )
}}

SELECT
    f.invoice_and_item_number AS invoice_and_item_number,
    f.date AS date,
    f.store_number AS store_number,
    s.store_name AS store_name,
    s.address AS address,
    s.city AS city,
    s.zip_code AS zip_code,
--    s.store_location AS store_location,
    s.county_number AS county_number,
    s.county AS county,
    f.category AS category,
    c.category_name AS category_name,
    f.vendor_number AS vendor_number,
    v.vendor_name AS vendor_name,
    f.item_number AS item_number,
    i.item_description AS item_description,
    f.pack AS pack,
    f.bottle_volume_ml AS bottle_volume_ml,
    f.state_bottle_cost AS state_bottle_cost,
    f.state_bottle_retail AS state_bottle_retail,
    f.bottles_sold AS bottles_sold,
    f.sale_dollars AS sale_dollars,
    f.volume_sold_liters AS volume_sold_liters,
    f.volume_sold_gallons AS volume_sold_gallons
FROM {{ ref('fact_sales') }} AS f
JOIN {{ ref('dim_store') }} AS s 
    ON f.store_number = s.store_number
JOIN {{ ref('dim_date') }} AS d 
    ON f.date = d.date
JOIN {{ ref('dim_category') }} AS c 
    ON f.category = c.category
JOIN {{ ref('dim_vendor') }} AS v 
    ON f.vendor_number = v.vendor_number
JOIN {{ ref('dim_item') }} AS i 
    ON f.item_number = i.item_number

/*WHERE invoice_and_item_number = 'INV-59246400001'*/