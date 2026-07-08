# Phase 2 - SQL to PySpark Bridge

## Objective

The objective of this phase is to understand how SQL queries can be translated into equivalent PySpark DataFrame operations. This phase focuses on performing common data analysis tasks using both SQL and PySpark and comparing the results.

---

## Datasets Used

### customers.csv

Contains customer information such as:

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

Contains sales transaction details such as:

* Sale ID
* Customer ID
* Product ID
* Sale Date
* Quantity
* Total Amount

---

## Steps Performed

1. Loaded the CSV datasets into PySpark DataFrames.
2. Displayed the data using `show()` and `display()`.
3. Verified the schema using `printSchema()`.
4. Created temporary SQL views from the DataFrames.
5. Executed SQL queries using Spark SQL.
6. Implemented equivalent PySpark DataFrame queries.
7. Compared the outputs of SQL and PySpark.

---

## SQL Concepts Covered

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* HAVING
* LIMIT
* INNER JOIN
* LEFT JOIN
* Aggregate Functions

  * SUM()
  * AVG()
  * COUNT()

---

## PySpark Concepts Covered

* `spark.read.csv()`
* `show()`
* `display()`
* `printSchema()`
* `createOrReplaceTempView()`
* `spark.sql()`
* `groupBy()`
* `agg()`
* `sum()`
* `avg()`
* `count()`
* `join()`
* `filter()`
* `orderBy()`
* `alias()`

---

## Exercises Completed

1. Total order amount for each customer.
2. Top 3 customers by total spend.
3. Customers with no orders.
4. City-wise total revenue.
5. Average order amount per customer.
6. Customers with more than one order.
7. Sort customers by total spend in descending order.

---

## Learning Outcomes

* Learned to load CSV files into PySpark DataFrames.
* Understood the differences and similarities between SQL queries and PySpark DataFrame operations.
* Practiced performing joins, aggregations, filtering, sorting, and grouping.
* Learned to use Spark SQL by creating temporary views.
* Gained hands-on experience with SQL and PySpark for solving analytical problems.
* Improved understanding of data processing workflows using Apache Spark.
