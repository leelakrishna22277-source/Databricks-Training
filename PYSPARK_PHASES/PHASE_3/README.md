# Phase 3 - Data Ingestion and Cleaning Pipeline

## Objective

The objective of this phase is to build a data ingestion and cleaning pipeline using PySpark. The focus is on reading raw datasets, cleaning and transforming the data, joining multiple datasets, and storing the processed data in the Silver layer.

---

## Datasets Used

### customers.csv

Contains customer information including:

* Customer ID
* First Name
* Last Name
* Email
* Phone Number
* Address
* City
* State
* Zip Code

### sales.csv

Contains sales transaction details including:

* Sale ID
* Customer ID
* Product ID
* Sale Date
* Quantity
* Total Amount

### products.csv

Contains product information including:

* Product ID
* Product Name
* Category
* Price
* Stock Quantity

---

## Steps Performed

1. Loaded CSV datasets into PySpark DataFrames.
2. Displayed the datasets and verified their schemas.
3. Cleaned the data by handling null values, removing duplicates, and casting columns to appropriate data types.
4. Performed data transformations and aggregations.
5. Joined customer, sales, and product datasets.
6. Created a catalog and Silver schema.
7. Stored the transformed data as a Delta table in the Silver layer.

---

## PySpark Concepts Covered

* `spark.read.csv()`
* `printSchema()`
* `show()`
* `display()`
* `dropna()`
* `dropDuplicates()`
* `withColumn()`
* `cast()`
* `join()`
* `groupBy()`
* `agg()`
* `sum()`
* `avg()`
* `count()`
* `fillna()`
* `create catalog`
* `create schema`
* `saveAsTable()`
* Delta Lake

---

## Learning Outcomes

* Learned to build an end-to-end data ingestion pipeline.
* Practiced cleaning and transforming raw datasets using PySpark.
* Performed joins and aggregations across multiple datasets.
* Learned to organize processed data using the Silver layer.
* Stored processed data as Delta tables for efficient querying and future processing.
