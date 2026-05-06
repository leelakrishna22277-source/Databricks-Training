# Week 1 Day 2 SQL Learning

## Overview

Today I continued practicing SQL by focusing on advanced concepts like HAVING clause, ORDER BY, and different types of JOINS using Employee, Department, and Project tables.

## What I Learned

* I learned how to use HAVING clause to filter grouped data after applying GROUP BY

* I understood how to apply conditions on aggregate functions like COUNT, AVG, SUM, and MAX

* I practiced filtering departments based on employee count and salary conditions

* I learned how to sort data using ORDER BY in both ascending and descending order

* I understood sorting using multiple columns such as department_id and salary

* I learned how to combine data from multiple tables using JOIN

* I practiced INNER JOIN to get matching records from Employee and Department tables

* I learned LEFT JOIN to include employees even if they do not belong to any department

* I understood RIGHT JOIN to include all departments even if no employees are assigned

* I practiced joining Project table with Employee and Department tables

* I learned how to count number of projects per employee using GROUP BY

* I understood how to find employees working in the same department using self join

* I learned how to find department with highest average salary using ORDER BY and LIMIT

## Mistakes I Faced

* I used WHERE instead of HAVING for aggregate conditions

* I used = NULL instead of IS NULL in join queries

* I missed grouping required columns while using aggregate functions

* I made mistakes in join conditions which caused incorrect results

## Key Understanding

* HAVING is used after GROUP BY for filtering aggregated results

* ORDER BY helps in sorting data clearly and effectively

* JOIN is essential to combine related data from multiple tables

* LEFT JOIN is useful to find missing relationships

* Correct join conditions are important to avoid wrong data

## Conclusion

By the end of Day 2, I gained a better understanding of filtering grouped data, sorting results, and combining multiple tables using joins. I also improved my ability to write more structured and meaningful SQL queries.
