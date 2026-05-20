# Week 4 Day 1 – Databricks Basics, CSV Files, Tables, SQL, Python, and IPython

---

# Overview

In this lesson, we learn:

* What is Databricks
* Main components of Databricks
* CSV files
* Tables in Databricks
* Databricks architecture
* Uploading CSV files
* Converting CSV files into tables
* SQL and Python methods
* Managed vs External tables
* Notebooks
* SQL vs Python notebooks
* IPython basics

---

# What is Databricks

Databricks is a cloud-based platform used for:

* Big Data Processing
* Data Engineering
* Data Analysis
* Machine Learning
* Artificial Intelligence
* ETL Pipelines

Databricks is built on top of Apache Spark.

---

# Why Databricks is Used

Companies use Databricks because it can process:

* Huge amounts of data
* Millions of records quickly
* Real-time streaming data
* AI and Machine Learning workloads

---

# Main Components of Databricks

| Component     | Purpose                    |
| ------------- | -------------------------- |
| Workspace     | Place where we work        |
| Notebook      | Write SQL/Python code      |
| Catalog       | Organizes tables and files |
| Volume        | Stores uploaded files      |
| Table         | Structured data storage    |
| Spark         | Processing engine          |
| SQL Warehouse | Runs SQL queries           |

---

# What is a CSV File

CSV means:

```text
Comma Separated Values
```

Example:

```csv
id,name,salary
1,john,50000
2,sara,60000
3,mike,70000
```

CSV files are used to:

* Store tabular data
* Transfer data
* Import/export data

---

# What is a Table in Databricks

A table stores data in rows and columns.

Example:

| id | name | salary |
| -- | ---- | ------ |
| 1  | john | 50000  |
| 2  | sara | 60000  |

Benefits:

* Easy querying
* Better organization
* Faster analysis
* SQL support

---

# Databricks Architecture Simple Explanation

```text
CSV File
    ↓
Upload to Volume
    ↓
Spark Reads File
    ↓
Create DataFrame
    ↓
Create Table
    ↓
Run SQL Queries
```

---

# Step-by-Step Process Overview

```text
1. Create Volume
       ↓
2. Upload CSV File
       ↓
3. Create Notebook
       ↓
4. Read CSV File
       ↓
5. Create DataFrame
       ↓
6. Convert into Table
       ↓
7. Run SQL Queries
```

---

# Upload CSV File

# Why We Upload CSV File

Databricks must access the file before converting it into a table.

---

# Steps to Upload CSV File

## Step 1

Open:

```text
Catalog
```

---

## Step 2

Go to:

```text
workspace
    ↓
default
```

---

## Step 3

Click:

```text
Create Volume
```

Example:

```text
my_volume
```

---

## Step 4

Open the volume.

---

## Step 5

Click:

```text
Upload Files
```

Choose CSV file.

Example:

```text
employees.csv
```

---

# Convert CSV File into Table Using UI

# What Happens Internally

```text
CSV File
     ↓
Volume Storage
     ↓
Spark Reads File
     ↓
Schema Detection
     ↓
Table Creation
```

---

# Steps

## Step 1

After upload, preview data appears.

---

## Step 2

Enable:

```text
First row is header
```

---

## Step 3

Enter table name:

```text
employees
```

---

## Step 4

Click:

```text
Create Table
```

---

# Convert CSV File into Table Using SQL

# Create SQL Notebook

Go to:

```text
Workspace
```

Create notebook with language:

```text
SQL
```

---

# SQL Query

```sql
create table employees
using csv
options (
  path '/Volumes/workspace/default/my_volume/employees.csv',
  header 'true',
  inferSchema 'true'
);
```

---

# Explanation

| Part             | Meaning                          |
| ---------------- | -------------------------------- |
| create table     | Creates table                    |
| using csv        | CSV file type                    |
| path             | File location                    |
| header true      | First row contains column names  |
| inferSchema true | Detects data types automatically |

---

# View Table Data

```sql
select * from employees;
```

---

# Count Rows

```sql
select count(*) from employees;
```

---

# Describe Table

```sql
describe employees;
```

---

# Convert CSV File into Table Using Python

# Create Python Notebook

Create notebook with language:

```text
Python
```

---

# Read CSV File

```python
df = spark.read.csv(
    "/Volumes/workspace/default/my_volume/employees.csv",
    header=True,
    inferSchema=True
)
```

---

# Explanation

| Parameter        | Meaning                   |
| ---------------- | ------------------------- |
| spark.read.csv   | Reads CSV file            |
| header=True      | First row is column names |
| inferSchema=True | Detects data types        |

---

# Show Data

```python
df.show()
```

---

# Print Schema

```python
df.printSchema()
```

---

# Save as Table

```python
df.write.mode("overwrite").saveAsTable("employees")
```

---

# Query Table

```python
spark.sql("select * from employees").show()
```

---

# Verify Data

# SQL Method

```sql
select * from employees;
```

---

# Python Method

```python
spark.sql("select * from employees").show()
```

---

# Save Table Permanently

# Permanent Save

```python
df.write.mode("overwrite").saveAsTable("employees")
```

---

# Explanation

| Mode      | Meaning                |
| --------- | ---------------------- |
| overwrite | Replaces existing data |
| append    | Adds new rows          |

---

# Difference Between Managed and External Tables

| Managed Table           | External Table                    |
| ----------------------- | --------------------------------- |
| Databricks manages data | User manages data                 |
| Data deleted with table | Data remains after table deletion |
| Easier for beginners    | Advanced usage                    |

---

# Managed Table Example

```sql
create table employees (
  id int,
  name string,
  salary int
);
```

---

# External Table Example

```sql
create table employees_ext
using csv
location '/Volumes/workspace/default/my_volume/employees.csv';
```

---

# What is Notebook in Databricks

Notebook is a place where we write:

* SQL
* Python
* Scala
* R

Notebook helps to:

* Run code
* Save code
* Share code

---

# SQL Notebook vs Python Notebook

| SQL Notebook         | Python Notebook      |
| -------------------- | -------------------- |
| Used for SQL queries | Used for programming |
| Easier for beginners | More powerful        |
| Good for analysis    | Good for automation  |

---

# What is IPython

IPython is an interactive Python shell.

It provides:

* Better Python terminal
* Auto suggestions
* Interactive coding
* Faster testing

---

# Why IPython is Used

Benefits:

* Beginner friendly
* Better debugging
* Interactive execution
* Easier experimentation

---

# Install IPython

Open command prompt and run:

```bash
pip install ipython
```

---

# Alternative Command

```bash
python -m pip install ipython
```

---

# Verify Installation

```bash
ipython
```

If installed successfully:

```text
In [1]:
```

appears.

---

# Useful IPython Commands

# Print Text

```python
print("hello")
```

---

# Variables

```python
name = "john"
print(name)
```

---

# Math Operations

```python
10 + 20
```

---

# Magic Commands

# Current Directory

```python
%pwd
```

---

# List Files

```python
%ls
```

---

# Time Execution

```python
%time sum(range(100000))
```

---

# Important Beginner Understanding

| Thing     | Meaning                   |
| --------- | ------------------------- |
| CSV File  | Raw data file             |
| Volume    | Storage location          |
| DataFrame | Temporary table in memory |
| Table     | Permanent structured data |
| Notebook  | Place to run code         |
| Spark     | Processing engine         |

---

# Real-Time Workflow in Companies

```text
CSV Files
      ↓
Upload to Volume
      ↓
Spark Reads Data
      ↓
Create DataFrame
      ↓
Create Tables
      ↓
Run SQL Queries
      ↓
Reports / Analytics
```

---

# Common Beginner Mistakes

| Mistake                  | Problem                     |
| ------------------------ | --------------------------- |
| Wrong file path          | File not found              |
| Wrong volume path        | Data cannot load            |
| Missing header=True      | Column names become _c0,_c1 |
| Missing inferSchema=True | All columns become string   |

---

# Best Beginner Learning Flow

```text
CSV
   ↓
Volume
   ↓
DataFrame
   ↓
Table
   ↓
SQL Queries
```

---

# Summary

In this lesson, we learned:

* Databricks basics
* Components of Databricks
* CSV files
* Tables
* Volumes
* SQL and Python notebooks
* Uploading CSV files
* Creating tables
* Verifying data
* Managed vs External tables
* IPython basics

This is the foundation of Databricks and Spark learning.
