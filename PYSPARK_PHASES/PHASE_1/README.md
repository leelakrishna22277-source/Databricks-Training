# Phase 1 - Data Loading, DataFrame Creation, Selection and Filtering using PySpark and SQL

## Objective

The objective of this phase is to understand the basic concepts of data processing using PySpark and Spark SQL.

The main focus of this phase is:

- Creating DataFrames
- Reading CSV files
- Understanding DataFrame structure
- Displaying and exploring data
- Selecting required columns
- Filtering records
- Performing basic operations using PySpark and SQL

---

# Dataset Used

## customers.csv

The customer dataset contains customer-related information.

### Dataset Attributes:

- Customer ID
- First Name
- Last Name
- Email
- Phone Number
- Address
- City
- State
- Zip Code

---

# Phase 1 Implementation Steps

## 1. Creating DataFrames

A DataFrame is a distributed collection of structured data organized into rows and columns.

In PySpark, DataFrames are used to store, process, and analyze large datasets efficiently using Spark's distributed computing engine.

### Activities Performed:

- Created DataFrames from structured data.
- Understood DataFrame structure and organization.
- Verified columns and data types.
- Explored the contents of DataFrames.

---

# 2. Reading CSV Files

CSV files are commonly used as raw data sources in data engineering workflows.

PySpark provides capabilities to load CSV files into DataFrames for further processing.

### Activities Performed:

- Loaded customer data from CSV files.
- Read data with column names and appropriate data types.
- Converted raw file data into structured DataFrames.
- Performed initial data validation after loading.

---

# 3. Data Exploration and Display

Data exploration helps to understand the structure, quality, and contents of the dataset before performing transformations.

### Activities Performed:

- Viewed dataset records.
- Checked column names.
- Verified data types.
- Inspected the overall structure of the DataFrame.
- Validated whether data was loaded correctly.

---

# 4. Selecting Data

Selection is the process of retrieving only the required columns from a dataset.

It helps reduce unnecessary data processing and improves query efficiency.

### Activities Performed:

- Selected required columns from DataFrames.
- Focused only on relevant attributes needed for analysis.
- Improved data readability by removing unwanted columns.

---

# 5. Filtering Data

Filtering is used to extract records that satisfy specific conditions.

It helps in analyzing subsets of data based on business requirements.

### Activities Performed:

- Applied conditions to filter records.
- Retrieved specific customer information based on requirements.
- Performed conditional data extraction.

Examples of filtering use cases:

- Finding customers from a specific city.
- Retrieving records based on specific values.
- Extracting required subsets of data.

---

# 6. Basic DataFrame Operations

Basic DataFrame operations help in understanding and manipulating data before advanced transformations.

### Operations Covered:

- Viewing data
- Selecting columns
- Filtering records
- Sorting data
- Counting records
- Checking data structure

These operations form the foundation for building ETL pipelines.

---

# Spark SQL Operations

## 7. Creating Temporary Views

Spark SQL allows DataFrames to be queried using SQL commands.

Temporary views provide a bridge between PySpark DataFrames and SQL queries.

### Activities Performed:

- Converted DataFrames into SQL views.
- Used SQL syntax to perform data analysis.
- Queried DataFrames using Spark SQL.

---

# 8. Data Selection using SQL

SQL SELECT operations are used to retrieve required columns from datasets.

### Activities Performed:

- Retrieved specific attributes from tables.
- Selected only required information for analysis.
- Improved query efficiency by avoiding unnecessary columns.

---

# 9. Data Filtering using SQL

SQL filtering allows users to extract records based on specific conditions.

### Activities Performed:

- Applied conditions using SQL queries.
- Retrieved matching records from datasets.
- Performed conditional analysis on customer data.

---

# 10. Sorting Data using SQL

Sorting organizes data in a specific order for better analysis and reporting.

### Activities Performed:

- Arranged records based on selected columns.
- Improved readability of query results.

---

# PySpark Concepts Covered

- DataFrames
- Reading CSV files
- DataFrame creation
- Schema understanding
- Data exploration
- Column selection
- Data filtering
- Sorting operations
- Temporary views
- Basic DataFrame operations

---

# SQL Concepts Covered

- SELECT operations
- WHERE conditions
- ORDER BY operations
- Querying DataFrames using Spark SQL
- Working with temporary views

---

# Learning Outcomes

After completing this phase:

- Learned the fundamentals of PySpark DataFrames.
- Understood how to load external CSV datasets.
- Learned how to explore and validate data.
- Practiced selecting required columns.
- Learned filtering techniques using PySpark and SQL.
- Understood how Spark SQL works with DataFrames.
- Built a foundation for advanced data transformation and ETL processes.

---

# Workflow
