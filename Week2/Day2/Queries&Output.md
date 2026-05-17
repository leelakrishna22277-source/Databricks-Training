# SQL Queries and Outputs

# Table 6 : Employee Attendance Evaluation

## Question

- Calculate attendance percentage (rounded)
- Month name
- Difference between total and present days
- Lowercase employee name
- Use CASE:
  - Excellent ≥90%
  - Average 75–89%
  - Poor otherwise

---

## Query

```sql
select *from attendance;

select emp_id,
emp_name,
total_days,

round((present_days/total_days)*100) as percentage,

record_date,

monthname(record_date) as month_name,

(total_days-present_days) as days_diff,

lower(emp_name),

case 
  when round((present_days/total_days)*100)>90 then 'Excellent'
  when round((present_days/total_days)*100)<90 
       and round((present_days/total_days)*100)>=75 then 'Average'
  else 'Poor'
end as perfomance

from attendance;
```

---

## Output

### attendance table

| emp_id | emp_name | total_days | present_days | record_date |
|---|---|---|---|---|
| 1 | karthik | 30 | 28 | 2025-01-31 |
| 2 | veena | 30 | 22 | 2025-01-31 |
| 3 | ravi | 30 | 18 | 2025-01-31 |

---

### query output

| emp_id | emp_name | total_days | percentage | record_date | month_name | days_diff | lower(emp_name) | perfomance |
|---|---|---|---|---|---|---|---|---|
| 1 | karthik | 30 | 93 | 2025-01-31 | January | 2 | karthik | Excellent |
| 2 | veena | 30 | 73 | 2025-01-31 | January | 8 | veena | Poor |
| 3 | ravi | 30 | 60 | 2025-01-31 | January | 12 | ravi | Poor |

---

# Table 7 : Product Discount Validation

## Question

- Discount amount (absolute)
- Discount percentage
- Day name of sale
- Proper case product name
- Use CASE:
  - Valid Discount
  - Overpriced
  - No Discount

---

## Query

```sql
select *from product_sales;

select product_id,
product_name,
mrp,
selling_price,

abs(mrp-selling_price) as discount,

((abs(mrp-selling_price)/mrp)*100) as disount_percen,

dayname(sale_date) as sale_day,

upper(product_name) as proper_name,

case
  when ((abs(mrp-selling_price)/mrp)*100) >8 then 'Overpriced'
  when ((abs(mrp-selling_price)/mrp)*100) between 1 and 8 then 'Valid Discount'
  else 'No Discount'
end as disount_check

from product_sales;
```

---

## Output

### product_sales table

| product_id | product_name | mrp | selling_price | sale_date |
|---|---|---|---|---|
| 1 | Laptop | 75000.75 | 68000.50 | 2025-01-10 |
| 2 | Mobile | 35000.40 | 33000.25 | 2025-01-12 |
| 3 | Tablet | 25000.90 | 26000.75 | 2025-01-15 |

---

### query output

| product_id | product_name | mrp | selling_price | discount | disount_percen | sale_day | proper_name | disount_check |
|---|---|---|---|---|---|---|---|---|
| 1 | Laptop | 75000.75 | 68000.50 | 7000.25 | 9.333573 | Friday | LAPTOP | Overpriced |
| 2 | Mobile | 35000.40 | 33000.25 | 2000.15 | 5.714649 | Sunday | MOBILE | Valid Discount |
| 3 | Tablet | 25000.90 | 26000.75 | 999.85 | 3.999256 | Wednesday | TABLET | Valid Discount |

---

# Table 8 : Insurance Policy Aging

## Question

- Policy duration in years
- Remaining days
- Rounded premium
- Uppercase holder name
- Use CASE:
  - Long Term
  - Mid Term
  - Expired

---

## Query

```sql
select *from insurance_policies;

select

policy_id,

upper(holder_name) as holder_name,

premium_amount,

round(premium_amount) as rounded_premium,

timestampdiff(year,policy_start,policy_end) as policy_duration_years,

datediff(policy_end,current_date) as remaining_days,

case
    when datediff(policy_end,current_date) > 365
         then 'Long Term'

    when datediff(policy_end,current_date) between 1 and 365
         then 'Mid Term'

    else 'Expired'
end as policy_status

from insurance_policies;
```

---

## Output

### insurance_policies table

| policy_id | holder_name | premium_amount | policy_start | policy_end |
|---|---|---|---|---|
| 301 | arjun | 12000.50 | 2023-01-01 | 2026-01-01 |
| 302 | megha | 8500.75 | 2022-06-15 | 2025-06-15 |
| 303 | vinod | 15000.90 | 2021-03-01 | 2024-03-01 |

---

### query output

| policy_id | holder_name | premium_amount | rounded_premium | policy_duration_years | remaining_days | policy_status |
|---|---|---|---|---|---|---|
| 301 | ARJUN | 12000.50 | 12001 | 3 | -136 | Expired |
| 302 | MEGHA | 8500.75 | 8501 | 3 | -336 | Expired |
| 303 | VINOD | 15000.90 | 15001 | 3 | -807 | Expired |

---

# Table 9 : Salary Increment Simulation

## Question

- Years since last hike
- Increment using rating logic
- New salary (rounded)
- Lowercase name
- Use CASE:
  - High Increment
  - Moderate
  - No Increment

---

## Query

```sql
select *from salary_revision;

select

emp_id,

lower(emp_name) as emp_name,

current_salary,

rating,

timestampdiff(year,last_hike,current_date) as years_since_hike,

case
    when rating = 5
         then current_salary * 0.20

    when rating = 4
         then current_salary * 0.10

    else current_salary * 0.05
end as increment_amount,

round(
case
    when rating = 5
         then current_salary + (current_salary * 0.20)

    when rating = 4
         then current_salary + (current_salary * 0.10)

    else current_salary + (current_salary * 0.05)
end
) as new_salary,

case
    when rating = 5
         then 'High Increment'

    when rating = 4
         then 'Moderate'

    else 'No Increment'
end as increment_status

from salary_revision;
```

---

## Output

### salary_revision table

| emp_id | emp_name | current_salary | rating | last_hike |
|---|---|---|---|---|
| 1 | karthik | 75000.75 | 5 | 2023-01-01 |
| 2 | veena | 65000.40 | 4 | 2024-01-01 |
| 3 | ravi | 85000.90 | 3 | 2022-01-01 |

---

### query output

| emp_id | emp_name | current_salary | rating | years_since_hike | increment_amount | new_salary | increment_status |
|---|---|---|---|---|---|---|---|
| 1 | karthik | 75000.75 | 5 | 3 | 15000.1500 | 90001 | High Increment |
| 2 | veena | 65000.40 | 4 | 2 | 6500.0400 | 71500 | Moderate |
| 3 | ravi | 85000.90 | 3 | 4 | 4250.0450 | 89251 | No Increment |

---

# Table 10 : Customer Account Status Evaluation

## Question

- Absolute balance
- Days since last transaction
- Proper case branch name
- Sign of balance
- Use CASE:
  - Active
  - Dormant
  - Overdrawn

---

## Query

```sql
select *from bank_accounts;

select

account_id,

customer_name,

abs(balance) as absolute_balance,

datediff(current_date,last_transaction) as days_since_transaction,

upper(branch) as branch_name,

sign(balance) as balance_sign,

case
    when balance < 0
         then 'Overdrawn'

    when datediff(current_date,last_transaction) > 365
         then 'Dormant'

    else 'Active'
end as account_status

from bank_accounts;
```

---

## Output

### bank_accounts table

| account_id | customer_name | balance | last_transaction | branch |
|---|---|---|---|---|
| 501 | ramesh | 125000.75 | 2024-12-20 | hyderabad |
| 502 | sita | 8500.40 | 2023-06-15 | delhi |
| 503 | manoj | -2500.90 | 2025-01-05 | mumbai |

---

### query output

| account_id | customer_name | absolute_balance | days_since_transaction | branch_name | balance_sign | account_status |
|---|---|---|---|---|---|---|
| 501 | ramesh | 125000.75 | 513 | HYDERABAD | 1 | Dormant |
| 502 | sita | 8500.40 | 1067 | DELHI | 1 | Dormant |
| 503 | manoj | 2500.90 | 497 | MUMBAI | -1 | Overdrawn |
