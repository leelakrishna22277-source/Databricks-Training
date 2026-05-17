# SQL Functions Practice Questions and Outputs

---

# Table 1 : Employee Compensation Classification

## Question

- Convert emp_name to upper and lower case
- Calculate total income using NULL safe logic
- Round total income
- Extract joining year
- Classify employee using CASE statement

---

## Table Data Query

```sql
select *from employee_payments;
```

## Output

```text
+--------+----------+------------+-------------+---------+--------------+
| emp_id | emp_name | department | base_salary | bonus   | joining_date |
+--------+----------+------------+-------------+---------+--------------+
|      1 | karthik  | Data       |    75000.75 | 5000.50 | 2019-03-15   |
|      2 | veena    | HR         |    65000.40 | 4000.25 | 2021-06-20   |
|      3 | ravi     | Data       |    85000.90 | 6000.75 | 2016-01-10   |
|      4 | anil     | Finance    |    70000.10 |    NULL | 2020-09-01   |
|      5 | suresh   | HR         |    60000.55 | 3000.30 | 2022-11-25   |
+--------+----------+------------+-------------+---------+--------------+
```

---

## Query

```sql
select

emp_id,

emp_name,

upper(emp_name) as upper_name,

lower(emp_name) as lower_name,

base_salary,

bonus,

base_salary + coalesce(bonus,0) as total_income,

round(base_salary + coalesce(bonus,0)) as rounded_total_income,

extract(year from joining_date) as joining_year,

timestampdiff(year, joining_date, current_date) as experience,

case
    when timestampdiff(year, joining_date, current_date) > 7
         then 'Senior'

    when timestampdiff(year, joining_date, current_date)
         between 4 and 7
         then 'Mid'

    else 'Junior'
end as category

from employee_payments;
```

## Output

```text
+--------+----------+------------+------------+-------------+---------+--------------+----------------------+--------------+------------+----------+
| emp_id | emp_name | upper_name | lower_name | base_salary | bonus   | total_income | rounded_total_income | joining_year | experience | category |
+--------+----------+------------+------------+-------------+---------+--------------+----------------------+--------------+------------+----------+
|      1 | karthik  | KARTHIK    | karthik    |    75000.75 | 5000.50 |     80001.25 |                80001 |         2019 |          7 | Mid      |
|      2 | veena    | VEENA      | veena      |    65000.40 | 4000.25 |     69000.65 |                69001 |         2021 |          4 | Mid      |
|      3 | ravi     | RAVI       | ravi       |    85000.90 | 6000.75 |     91001.65 |                91002 |         2016 |         10 | Senior   |
|      4 | anil     | ANIL       | anil       |    70000.10 |    NULL |     70000.10 |                70000 |         2020 |          5 | Mid      |
|      5 | suresh   | SURESH     | suresh     |    60000.55 | 3000.30 |     63000.85 |                63001 |         2022 |          3 | Junior   |
+--------+----------+------------+------------+-------------+---------+--------------+----------------------+--------------+------------+----------+
```

---

# Table 2 : Order Delivery Delay Analysis

## Question

- Convert customer name to uppercase
- Calculate delivery days
- Replace NULL delivery date with current date
- Truncate amount to 1 decimal
- Categorize delivery status

---

## Table Data Query

```sql
select *from orders_delivery;
```

## Output

```text
+----------+---------------+------------+---------------+--------------+
| order_id | customer_name | order_date | delivery_date | order_amount |
+----------+---------------+------------+---------------+--------------+
|      101 | rajesh        | 2025-01-01 | 2025-01-05    |     12500.75 |
|      102 | meena         | 2025-01-10 | 2025-01-10    |      8400.40 |
|      103 | arun          | 2025-01-15 | 2025-01-20    |     15600.90 |
|      104 | pooja         | 2025-01-18 | NULL          |      9200.10 |
+----------+---------------+------------+---------------+--------------+
```

---

## Query

```sql
select

order_id,

customer_name,

order_date,

coalesce(delivery_date,current_date) as updated_delivery_date,

datediff(coalesce(delivery_date,current_date),order_date) as delivery_days,

truncate(order_amount,1) as truncated_amount,

case
    when delivery_date is null
         then 'Pending'

    when datediff(delivery_date,order_date) = 0
         then 'Same Day'

    when datediff(delivery_date,order_date) > 3
         then 'Delayed'

    else 'On Time'
end as delivery_status

from orders_delivery;
```

## Output

```text
+----------+---------------+------------+-----------------------+---------------+------------------+-----------------+
| order_id | customer_name | order_date | updated_delivery_date | delivery_days | truncated_amount | delivery_status |
+----------+---------------+------------+-----------------------+---------------+------------------+-----------------+
|      101 | rajesh        | 2025-01-01 | 2025-01-05            |             4 |          12500.7 | Delayed         |
|      102 | meena         | 2025-01-10 | 2025-01-10            |             0 |           8400.4 | Same Day        |
|      103 | arun          | 2025-01-15 | 2025-01-20            |             5 |          15600.9 | Delayed         |
|      104 | pooja         | 2025-01-18 | 2026-05-17            |           484 |           9200.1 | Pending         |
+----------+---------------+------------+-----------------------+---------------+------------------+-----------------+
```

---

# Table 3 : Customer Spending Pattern

## Question

- Extract purchase month
- Round purchase amount
- Find absolute value
- Categorize spender type

---

## Table Data Query

```sql
select *from customer_spending;
```

## Output

```text
+---------+-----------+---------+-----------------+---------------+
| cust_id | cust_name | city    | purchase_amount | purchase_date |
+---------+-----------+---------+-----------------+---------------+
|       1 | amit      | mumbai  |        12000.75 | 2024-12-01    |
|       2 | neha      | delhi   |         8500.40 | 2024-12-15    |
|       3 | rohit     | mumbai  |        15500.90 | 2024-11-20    |
|       4 | kavya     | chennai |         6000.10 | 2024-10-05    |
+---------+-----------+---------+-----------------+---------------+
```

---

## Query

```sql
select

cust_id,

cust_name,

city,

monthname(purchase_date) as purchase_month,

round(purchase_amount) as rounded_amount,

abs(purchase_amount) as absolute_amount,

case
    when purchase_amount > 15000
         then 'High Spender'

    when purchase_amount between 8000 and 15000
         then 'Medium Spender'

    else 'Low Spender'
end as category

from customer_spending;
```

## Output

```text
+---------+-----------+---------+----------------+----------------+-----------------+----------------+
| cust_id | cust_name | city    | purchase_month | rounded_amount | absolute_amount | category       |
+---------+-----------+---------+----------------+----------------+-----------------+----------------+
|       1 | amit      | mumbai  | December       |          12001 |        12000.75 | Medium Spender |
|       2 | neha      | delhi   | December       |           8500 |         8500.40 | Medium Spender |
|       3 | rohit     | mumbai  | November       |          15501 |        15500.90 | High Spender   |
|       4 | kavya     | chennai | October        |           6000 |         6000.10 | Low Spender    |
+---------+-----------+---------+----------------+----------------+-----------------+----------------+
```

---

# Table 4 : Subscription Validity Check

## Question

- Extract email domain
- Calculate subscription duration
- Format fee with commas
- Find remaining days
- Categorize subscription status

---

## Table Data Query

```sql
select *from subscriptions;
```

## Output

```text
+---------+-------------------+------------+------------+------------------+
| user_id | user_email        | start_date | end_date   | subscription_fee |
+---------+-------------------+------------+------------+------------------+
|       1 | karthik@gmail.com | 2024-01-01 | 2025-01-01 |         12000.50 |
|       2 | veena@yahoo.com   | 2024-06-15 | 2024-12-15 |          8500.75 |
|       3 | ravi@hotmail.com  | 2023-03-01 | 2024-03-01 |         15000.90 |
+---------+-------------------+------------+------------+------------------+
```

---

## Query

```sql
select

user_id,

user_email,

substring_index(user_email,'@',-1) as domain,

timestampdiff(month,start_date,end_date) as duration_months,

format(subscription_fee,2) as formatted_fee,

datediff(end_date,current_date) as remaining_days,

case
    when datediff(end_date,current_date) > 30
         then 'Active'

    when datediff(end_date,current_date) between 0 and 30
         then 'Expiring Soon'

    else 'Expired'
end as status

from subscriptions;
```

## Output

```text
+---------+-------------------+-------------+-----------------+---------------+----------------+---------+
| user_id | user_email        | domain      | duration_months | formatted_fee | remaining_days | status  |
+---------+-------------------+-------------+-----------------+---------------+----------------+---------+
|       1 | karthik@gmail.com | gmail.com   |              12 | 12,000.50     |           -501 | Expired |
|       2 | veena@yahoo.com   | yahoo.com   |               6 | 8,500.75      |           -518 | Expired |
|       3 | ravi@hotmail.com  | hotmail.com |              12 | 15,000.90     |           -807 | Expired |
+---------+-------------------+-------------+-----------------+---------------+----------------+---------+
```

---

# Table 5 : Loan EMI Risk Categorization

## Question

- Calculate monthly interest using power function
- Find years since loan start
- Round EMI
- Convert customer name to uppercase
- Categorize loan risk

---

## Table Data Query

```sql
select *from loan_details;
```

## Output

```text
+---------+---------------+-------------+---------------+------------+
| loan_id | customer_name | loan_amount | interest_rate | loan_start |
+---------+---------------+-------------+---------------+------------+
|     201 | suresh        |   500000.75 |          8.50 | 2022-01-10 |
|     202 | mahesh        |   750000.40 |          9.20 | 2021-05-20 |
|     203 | anita         |   300000.90 |          7.80 | 2023-07-01 |
+---------+---------------+-------------+---------------+------------+
```

---

## Query

```sql
select

loan_id,

upper(customer_name) as customer_name,

loan_amount,

interest_rate,

power((1 + interest_rate/100),1/12) as monthly_interest,

timestampdiff(year,loan_start,current_date) as year_gap,

round(loan_amount) as rounded_emi,

case
    when interest_rate > 9
         then 'High Risk'

    when interest_rate < 9 and interest_rate > 6
         then 'Medium Risk'

    else 'Low Risk'
end as category

from loan_details;
```

## Output

```text
+---------+---------------+-------------+---------------+--------------------+----------+-------------+-------------+
| loan_id | customer_name | loan_amount | interest_rate | monthly_interest   | year_gap | rounded_emi | category    |
+---------+---------------+-------------+---------------+--------------------+----------+-------------+-------------+
|     201 | SURESH        |   500000.75 |          8.50 | 1.0068214933385833 |        4 |      500001 | Medium Risk |
|     202 | MAHESH        |   750000.40 |          9.20 | 1.0073612011574025 |        4 |      750000 | High Risk   |
|     203 | ANITA         |   300000.90 |          7.80 | 1.0062785842100341 |        2 |      300001 | Medium Risk |
+---------+---------------+-------------+---------------+--------------------+----------+-------------+-------------+
```

--- 
