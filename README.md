# About Business Questions

You can utilize the gold area to address business inquiries effectively and you can access the [dashboard](https://app.lightdash.cloud/projects/f2cbb3a3-d389-4972-bc59-a9f7edbade1a/dashboards/a59478a6-0b35-46e0-ad49-aa85f0bbbe9a/view/?filters=%7B%22dimensions%22%3A%5B%7B%22id%22%3A%228e9743e8-4cb4-43a8-b6e4-38c2c0cdcae7%22%2C%22operator%22%3A%22equals%22%2C%22target%22%3A%7B%22fieldId%22%3A%22sales_store_number%22%2C%22tableName%22%3A%22sales%22%2C%22fieldName%22%3A%22store_number%22%7D%2C%22disabled%22%3Afalse%2C%22values%22%3A%5B%222106%22%5D%7D%5D%2C%22metrics%22%3A%5B%5D%2C%22tableCalculations%22%3A%5B%5D%7D) in `Lightdash` using the gold layer.

<img width="800" alt="image" src="https://github.com/geanpannellini/iowa_liquor_retail_sales/assets/70926945/dbde4263-af89-4f67-9122-b8eea3dbaea1">

The primary model, which is [Sales Model](models/gold/sales.sql), provides the means to answer all the previous questions mentioned.

 `1_a. Calculate the total products and revenue sold over time by quarter` [Analyses, Answer 1_a](analyses/answer_1_a.sql)

| Quarter | Total Products Sold | Total Revenue (USD) |
|---------|---------------------|---------------|
| Q1      | 15,548,352          | 2,184,055,213.86 |
| Q2      | 16,849,908          | 2,452,430,845.84 |
| Q3      | 16,102,263          | 2,342,578,251.40 |
| Q4      | 16,672,083          | 2,574,562,232.33 |

 `1_b. Identify the month where the revenue sold was 10% above the average.` [Analyses, Answer 1_b](analyses/answer_1_b.sql)

| Month | Revenue (USD) |
|-------|---------|
| 12    | 923,849,153.14 |
| 10    | 883,852,446.06 |

 `2. List the counties where the amount (in dollars) of purchase transactions went over $100K.` [Analyses, Answer 2](analyses/answer_2.sql)

> The first 5 results, please, click to expand the other 94 results.

| County         | Total Sales  (USD)     |
|----------------|------------------------|
| POLK           | 2,231,412,892.36       |
| LINN           | 836,910,248.29         |
| SCOTT          | 676,234,211.45         |
| JOHNSON        | 565,370,294.14         |
| BLACK HAWK     | 534,805,393.40         |

<details>
<summary>Click to expand </summary>
  
| County         | Total Sales  (USD)     |
|----------------|------------------------|
| POTTAWATTAMIE  | 344,816,728.64         |
| WOODBURY       | 331,924,475.41         |
| DUBUQUE        | 292,460,322.00         |
| STORY          | 282,700,828.80         |
| DALLAS         | 212,462,454.04         |
| CERRO GORDO    | 197,362,522.19         |
| CLINTON        | 160,594,434.33         |
| DICKINSON      | 129,971,091.06         |
| DES MOINES     | 112,432,035.59         |
| LEE            | 110,011,286.23         |
| WEBSTER        | 106,324,858.67         |
| MUSCATINE      | 101,206,725.64         |
| MARSHALL       | 99,134,272.76          |
| WAPELLO        | 88,687,270.34          |
| WARREN         | 85,707,404.71          |
| CARROLL        | 75,186,042.64          |
| MARION         | 69,511,268.57          |
| JASPER         | 58,216,971.84          |
| BREMER         | 57,598,483.14          |
| BOONE          | 56,919,088.90          |
| BUENA VISTA    | 55,605,695.10          |
| HARDIN         | 55,075,908.40          |
| WASHINGTON     | 53,667,863.50          |
| SIOUX          | 52,269,122.47          |
| PLYMOUTH       | 50,742,597.68          |
| KOSSUTH        | 50,668,584.63          |
| CLAY           | 46,798,509.56          |
| POWESHIEK      | 44,701,992.93          |
| WINNESHIEK     | 41,423,876.39          |
| CRAWFORD       | 40,263,521.47          |
| IOWA           | 39,845,654.96          |
| JONES          | 38,421,427.24          |
| O'BRIEN        | 38,120,603.43          |
| MAHASKA        | 37,446,433.83          |
| BUCHANAN       | 37,060,008.02          |
| CASS           | 37,006,619.89          |
| HENRY          | 36,977,532.05          |
| PAGE           | 36,960,459.53          |

</details>

 `3_a. Identify the top 10 stores with more revenue in sold products` [Analyses, Answer 3_a](analyses/answer_3_a.sql)

| Store Name                                  | Total Revenue (USD) |
|---------------------------------------------|---------------------|
| HY-VEE #3 / BDI / DES MOINES                | 325,980,403.20      |
| CENTRAL CITY 2                              | 289,904,813.05      |
| HY-VEE WINE AND SPIRITS / IOWA CITY         | 133,628,636.04      |
| SAM'S CLUB 8162 / CEDAR RAPIDS              | 98,795,093.18       |
| SAM'S CLUB 6344 / WINDSOR HEIGHTS           | 93,223,874.89       |
| COSTCO WHOLESALE #788                       | 91,098,556.02       |
| BENZ DISTRIBUTING                           | 88,565,113.22       |
| WILKIE LIQUORS                              | 87,044,126.23       |
| LOT-A-SPIRITS                               | 75,775,915.28       |
| SAM'S CLUB 8238 / DAVENPORT                 | 67,925,426.94       |


 `3_b. The bottom stores with the least revenue in sold products` [Analyses, Answer 3_b](analyses/answer_3_b.sql)

| Store Name                   | Total Revenue |
|------------------------------|---------------|
| HONEY CREEK DISTILLERY       | 235.68        |
| BEST CASE WINES              | 312.00        |
| 3-OAKS DISTILLERY, LLC       | 388.80        |
| THOME ENTERPRISES LLC        | 576.00        |
| DIRECT LIQUOR / ALVORD       | 1,250.18      |
| Y-KNOT                       | 1,373.60      |
| HARTIG DRUG #12 / WAUKON     | 1,848.42      |
| WILDCAT DISTILLING           | 2,016.00      |
| CATS EYE DISTILLERY, LLC     | 2,772.48      |
| JCL STORE                    | 3,015.72      |


# About the Data Pipeline - Model architecture

All tables are possibly found [here](models). 

I am using the medallion concept, and because of that I split the layers using `bronze`, `silver`, and `gold`. 

## Bronze

The bronze layer is basic the data how it is. There is a staging layer (XXX - link here), that we can make small transformation.

## Silver
The schema is above:

<img width="800" alt="image" src="https://github.com/geanpannellini/iowa_liquor_retail_sales/assets/70926945/15eee76d-b07f-40e7-866e-40c140431ed1">

> [!IMPORTANT]
> There are a lot of modes to represent the silver layer, using Star Schema or Snowflake methods. In this case, I am using Star Schema because the main motivation is to organize the data. Please, read my article about `XXX`

## Gold

The gold layer is the business layer and is possible to use for the business and data view.

## Lineage graphs

<img width="800" alt="image" src="https://github.com/geanpannellini/iowa_liquor_retail_sales/assets/70926945/df597a27-9013-441d-82d5-9f0caaa27db8">

## Data quality

> dim_vendor duplicado (XXX)
> dim_store null (XXX)

## Tips around macros, data validation, and documentation

> :point_right: [Macros] I created a simple "dates macro" to help with monthly, quarterly, semiannually. To check a case, [click here.](macros/dates.sql) To check an application, [click here.](analyses/answer_1_a.sql)

> :point_right: [Data Validation] In All tables are implemented tests in the primary key and important columns. To check a case, [click here.](models/sources/sources.yml)

> :point_right: [Documentation] In All tables are implemented tables and columns describe the schema is plugged with Data Catalog. To check a case, [click here.](models/silver/schema.yml)

## Additional information: Stack

<img width="477" alt="image" src="">

