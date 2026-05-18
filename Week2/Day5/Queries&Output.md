# SQL Regex Practice Questions with Queries and Outputs

---

# Table: regex_practice

```sql
select *from regex_practice;
```

## Output

| id | full_text | email | phone | mixed_value |
|---|---|---|---|---|
| 1 | EMP001_IN_91 | karthik@gmail.com | +91-9876543210 | abc123xyz |
| 2 | EMP002_US_01 | rahul@yahoo.com | +1-7654321098 | test45done |
| 3 | EMP003_UK_44 | john@outlook.com | +44-9988776655 | run9fast |
| 4 | EMP004_AU_61 | steve@gmail.com | +61-8899776655 | go88home |
| 5 | EMP005_IN_91 | arjun@company.in | +91-7788996655 | data77lake |
| 6 | EMP006_US_01 | meera@gmail.com | +1-9090909090 | spark12sql |
| 7 | EMP007_UK_44 | rohan@yahoo.com | +44-7878787878 | etl999job |
| 8 | EMP008_AU_61 | alice@company.au | +61-6665554443 | cloud7aws |
| 9 | EMP009_IN_91 | vinay@gmail.com | +91-9988776655 | hdfs34node |
| 10 | EMP010_US_01 | sam@outlook.com | +1-6767676767 | map5reduce |
| 11 | USR11_IN | neha@gmail.com | 91-8899001122 | abc1 |
| 12 | USR12_US | tom@yahoo.com | 01-9988776655 | x9 |
| 13 | USR13_UK | harry@company.co.uk | 44-6677889900 | z88 |
| 14 | USR14_AU | olivia@gmail.com | 61-4455667788 | q777 |
| 15 | USR15_IN | ankit@company.in | 91-9988001122 | karthik99 |
| 16 | ACC_1001_91 | user1@gmail.com | +91-8877665544 | etl1 |
| 17 | ACC_1002_01 | user2@yahoo.com | +1-2233445566 | etl22 |
| 18 | ACC_1003_44 | user3@outlook.com | +44-3344556677 | etl333 |
| 19 | ACC_1004_61 | user4@gmail.com | +61-5566778899 | etl4444 |
| 20 | ACC_1005_91 | user5@company.in | +91-6677889900 | etl55555 |
| 21 | ORD-11-IN | a@gmail.com | 91-9998887776 | a1b2 |
| 22 | ORD-22-US | b@yahoo.com | 01-1112223334 | x2y |
| 23 | ORD-33-UK | c@outlook.com | 44-5556667778 | m33n |
| 24 | ORD-44-AU | d@gmail.com | 61-8887776665 | k444 |
| 25 | ORD-55-IN | e@company.in | 91-4445556667 | job5 |
| 26 | LOG91DATA | x@gmail.com | 91-9090909090 | log99 |
| 27 | LOG01DATA | y@yahoo.com | 01-8080808080 | log8 |
| 28 | LOG44DATA | z@outlook.com | 44-7070707070 | log777 |
| 29 | LOG61DATA | p@gmail.com | 61-6060606060 | log6666 |
| 30 | LOG91DATA | q@company.in | 91-5050505050 | log55555 |
| 31 | IND91CODE | aa@gmail.com | +91-8889990001 | aa1 |
| 32 | USA01CODE | bb@yahoo.com | +1-7776665554 | bb22 |
| 33 | UK44CODE | cc@outlook.com | +44-6665554443 | cc333 |
| 34 | AUS61CODE | dd@gmail.com | +61-5554443332 | dd4444 |
| 35 | IND91CODE | ee@company.in | +91-4443332221 | ee55555 |
| 36 | TEST001 | test1@gmail.com | 91-1111111111 | t1 |
| 37 | TEST002 | test2@yahoo.com | 01-2222222222 | t22 |
| 38 | TEST003 | test3@outlook.com | 44-3333333333 | t333 |
| 39 | TEST004 | test4@gmail.com | 61-4444444444 | t4444 |
| 40 | TEST005 | test5@company.in | 91-5555555555 | t55555 |

---

# Q1

## Question

From the column mixed_value, extract the numeric characters that appear at the very beginning of the value.

The extraction must stop as soon as a non-numeric character appears.

## Query

```sql
select mixed_value,
       regexp_substr(mixed_value, '^[0-9]+') as start_num
from regex_practice;
```

## Output

| mixed_value | start_num |
|---|---|
| abc123xyz | NULL |
| test45done | NULL |
| run9fast | NULL |
| go88home | NULL |
| data77lake | NULL |
| spark12sql | NULL |
| etl999job | NULL |
| cloud7aws | NULL |
| hdfs34node | NULL |
| map5reduce | NULL |
| abc1 | NULL |
| x9 | NULL |
| z88 | NULL |
| q777 | NULL |
| karthik99 | NULL |
| etl1 | NULL |
| etl22 | NULL |
| etl333 | NULL |
| etl4444 | NULL |
| etl55555 | NULL |
| a1b2 | NULL |
| x2y | NULL |
| m33n | NULL |
| k444 | NULL |
| job5 | NULL |
| log99 | NULL |
| log8 | NULL |
| log777 | NULL |
| log6666 | NULL |
| log55555 | NULL |
| aa1 | NULL |
| bb22 | NULL |
| cc333 | NULL |
| dd4444 | NULL |
| ee55555 | NULL |
| t1 | NULL |
| t22 | NULL |
| t333 | NULL |
| t4444 | NULL |
| t55555 | NULL |

---

# Q2

## Question

From the column mixed_value, extract the numeric characters that appear at the very end of the value.

No alphabetic or special characters should be included.

## Query

```sql
select mixed_value,
       regexp_substr(mixed_value, '[0-9]+$') as end_num
from regex_practice;
```

## Output

| mixed_value | end_num |
|---|---|
| abc123xyz | NULL |
| test45done | NULL |
| run9fast | NULL |
| go88home | NULL |
| data77lake | NULL |
| spark12sql | NULL |
| etl999job | NULL |
| cloud7aws | NULL |
| hdfs34node | NULL |
| map5reduce | NULL |
| abc1 | 1 |
| x9 | 9 |
| z88 | 88 |
| q777 | 777 |
| karthik99 | 99 |
| etl1 | 1 |
| etl22 | 22 |
| etl333 | 333 |
| etl4444 | 4444 |
| etl55555 | 55555 |
| a1b2 | 2 |
| x2y | NULL |
| m33n | NULL |
| k444 | 444 |
| job5 | 5 |
| log99 | 99 |
| log8 | 8 |
| log777 | 777 |
| log6666 | 6666 |
| log55555 | 55555 |
| aa1 | 1 |
| bb22 | 22 |
| cc333 | 333 |
| dd4444 | 4444 |
| ee55555 | 55555 |
| t1 | 1 |
| t22 | 22 |
| t333 | 333 |
| t4444 | 4444 |
| t55555 | 55555 |

---

# Q3

## Question

From the column mixed_value, extract only the first single character of the value, regardless of whether it is a letter or a number.

## Query

```sql
select mixed_value,
       regexp_substr(mixed_value, '^.') as first_char
from regex_practice;
```

## Output

| mixed_value | first_char |
|---|---|
| abc123xyz | a |
| test45done | t |
| run9fast | r |
| go88home | g |
| data77lake | d |
| spark12sql | s |
| etl999job | e |
| cloud7aws | c |
| hdfs34node | h |
| map5reduce | m |
| abc1 | a |
| x9 | x |
| z88 | z |
| q777 | q |
| karthik99 | k |
| etl1 | e |
| etl22 | e |
| etl333 | e |
| etl4444 | e |
| etl55555 | e |
| a1b2 | a |
| x2y | x |
| m33n | m |
| k444 | k |
| job5 | j |
| log99 | l |
| log8 | l |
| log777 | l |
| log6666 | l |
| log55555 | l |
| aa1 | a |
| bb22 | b |
| cc333 | c |
| dd4444 | d |
| ee55555 | e |
| t1 | t |
| t22 | t |
| t333 | t |
| t4444 | t |
| t55555 | t |

---

# Q4

## Question

From the column mixed_value, extract only the last single character of the value.

## Query

```sql
select mixed_value,
       regexp_substr(mixed_value, '.$') as last_char
from regex_practice;
```

## Output

| mixed_value | last_char |
|---|---|
| abc123xyz | z |
| test45done | e |
| run9fast | t |
| go88home | e |
| data77lake | e |
| spark12sql | l |
| etl999job | b |
| cloud7aws | s |
| hdfs34node | e |
| map5reduce | e |
| abc1 | 1 |
| x9 | 9 |
| z88 | 8 |
| q777 | 7 |
| karthik99 | 9 |
| etl1 | 1 |
| etl22 | 2 |
| etl333 | 3 |
| etl4444 | 4 |
| etl55555 | 5 |
| a1b2 | 2 |
| x2y | y |
| m33n | n |
| k444 | 4 |
| job5 | 5 |
| log99 | 9 |
| log8 | 8 |
| log777 | 7 |
| log6666 | 6 |
| log55555 | 5 |
| aa1 | 1 |
| bb22 | 2 |
| cc333 | 3 |
| dd4444 | 4 |
| ee55555 | 5 |
| t1 | 1 |
| t22 | 2 |
| t333 | 3 |
| t4444 | 4 |
| t55555 | 5 |

---

# Q5

## Question

From the column mixed_value, extract exactly two consecutive numeric characters that appear anywhere in the value.

Do not extract more or fewer than two digits.

## Query

```sql
select mixed_value,
       regexp_substr(mixed_value,'[0-9]{2}') as last_char
from regex_practice;
```

## Output

| mixed_value | last_char |
|---|---|
| abc123xyz | 12 |
| test45done | 45 |
| run9fast | NULL |
| go88home | 88 |
| data77lake | 77 |
| spark12sql | 12 |
| etl999job | 99 |
| cloud7aws | NULL |
| hdfs34node | 34 |
| map5reduce | NULL |
| abc1 | NULL |
| x9 | NULL |
| z88 | 88 |
| q777 | 77 |
| karthik99 | 99 |
| etl1 | NULL |
| etl22 | 22 |
| etl333 | 33 |
| etl4444 | 44 |
| etl55555 | 55 |
| a1b2 | NULL |
| x2y | NULL |
| m33n | 33 |
| k444 | 44 |
| job5 | NULL |
| log99 | 99 |
| log8 | NULL |
| log777 | 77 |
| log6666 | 66 |
| log55555 | 55 |
| aa1 | NULL |
| bb22 | 22 |
| cc333 | 33 |
| dd4444 | 44 |
| ee55555 | 55 |
| t1 | NULL |
| t22 | 22 |
| t333 | 33 |
| t4444 | 44 |
| t55555 | 55 |




---

# Q6

## Question

From the column mixed_value, extract exactly one numeric character that appears anywhere in the value.

## Query

```sql
select mixed_value,
       regexp_substr(mixed_value,'[0-9]') as single_digit
from regex_practice;
```

## Output

| mixed_value | single_digit |
|---|---|
| abc123xyz | 1 |
| test45done | 4 |
| run9fast | 9 |
| go88home | 8 |
| data77lake | 7 |
| spark12sql | 1 |
| etl999job | 9 |
| cloud7aws | 7 |
| hdfs34node | 3 |
| map5reduce | 5 |
| abc1 | 1 |
| x9 | 9 |
| z88 | 8 |
| q777 | 7 |
| karthik99 | 9 |
| etl1 | 1 |
| etl22 | 2 |
| etl333 | 3 |
| etl4444 | 4 |
| etl55555 | 5 |
| a1b2 | 1 |
| x2y | 2 |
| m33n | 3 |
| k444 | 4 |
| job5 | 5 |
| log99 | 9 |
| log8 | 8 |
| log777 | 7 |
| log6666 | 6 |
| log55555 | 5 |
| aa1 | 1 |
| bb22 | 2 |
| cc333 | 3 |
| dd4444 | 4 |
| ee55555 | 5 |
| t1 | 1 |
| t22 | 2 |
| t333 | 3 |
| t4444 | 4 |
| t55555 | 5 |

---

# Q7

## Question

From the column phone, extract the country code present at the beginning of the phone number.

The extracted value must contain only the country code digits.

## Query

```sql
select phone,
       regexp_substr(phone,'^[+]?[0-9]+') as country_code
from regex_practice;
```

## Output

| phone | country_code |
|---|---|
| +91-9876543210 | +91 |
| +1-7654321098 | +1 |
| +44-9988776655 | +44 |
| +61-8899776655 | +61 |
| +91-7788996655 | +91 |
| +1-9090909090 | +1 |
| +44-7878787878 | +44 |
| +61-6665554443 | +61 |
| +91-9988776655 | +91 |
| +1-6767676767 | +1 |
| 91-8899001122 | 91 |
| 01-9988776655 | 01 |
| 44-6677889900 | 44 |
| 61-4455667788 | 61 |
| 91-9988001122 | 91 |
| +91-8877665544 | +91 |
| +1-2233445566 | +1 |
| +44-3344556677 | +44 |
| +61-5566778899 | +61 |
| +91-6677889900 | +91 |
| 91-9998887776 | 91 |
| 01-1112223334 | 01 |
| 44-5556667778 | 44 |
| 61-8887776665 | 61 |
| 91-4445556667 | 91 |
| 91-9090909090 | 91 |
| 01-8080808080 | 01 |
| 44-7070707070 | 44 |
| 61-6060606060 | 61 |
| 91-5050505050 | 91 |
| +91-8889990001 | +91 |
| +1-7776665554 | +1 |
| +44-6665554443 | +44 |
| +61-5554443332 | +61 |
| +91-4443332221 | +91 |
| 91-1111111111 | 91 |
| 01-2222222222 | 01 |
| 44-3333333333 | 44 |
| 61-4444444444 | 61 |
| 91-5555555555 | 91 |

---

# Q8

## Question

From the column mixed_value, extract the numeric portion that is present between alphabetic characters.

## Query

```sql
select mixed_value,
       regexp_substr(mixed_value, '[0-9]+') as num_portion
from regex_practice;
```

## Output

| mixed_value | num_portion |
|---|---|
| abc123xyz | 123 |
| test45done | 45 |
| run9fast | 9 |
| go88home | 88 |
| data77lake | 77 |
| spark12sql | 12 |
| etl999job | 999 |
| cloud7aws | 7 |
| hdfs34node | 34 |
| map5reduce | 5 |
| abc1 | 1 |
| x9 | 9 |
| z88 | 88 |
| q777 | 777 |
| karthik99 | 99 |
| etl1 | 1 |
| etl22 | 22 |
| etl333 | 333 |
| etl4444 | 4444 |
| etl55555 | 55555 |
| a1b2 | 1 |
| x2y | 2 |
| m33n | 33 |
| k444 | 444 |
| job5 | 5 |
| log99 | 99 |
| log8 | 8 |
| log777 | 777 |
| log6666 | 6666 |
| log55555 | 55555 |
| aa1 | 1 |
| bb22 | 22 |
| cc333 | 333 |
| dd4444 | 4444 |
| ee55555 | 55555 |
| t1 | 1 |
| t22 | 22 |
| t333 | 333 |
| t4444 | 4444 |
| t55555 | 55555 |

---

# Q9

## Question

From the column email, extract the text that appears before the at-symbol.

The extracted value must not include the at-symbol itself.

## Query

```sql
select email,
       regexp_substr(email,'^[^@]+') as user_name
from regex_practice;
```

## Output

| email | user_name |
|---|---|
| karthik@gmail.com | karthik |
| rahul@yahoo.com | rahul |
| john@outlook.com | john |
| steve@gmail.com | steve |
| arjun@company.in | arjun |
| meera@gmail.com | meera |
| rohan@yahoo.com | rohan |
| alice@company.au | alice |
| vinay@gmail.com | vinay |
| sam@outlook.com | sam |
| neha@gmail.com | neha |
| tom@yahoo.com | tom |
| harry@company.co.uk | harry |
| olivia@gmail.com | olivia |
| ankit@company.in | ankit |
| user1@gmail.com | user1 |
| user2@yahoo.com | user2 |
| user3@outlook.com | user3 |
| user4@gmail.com | user4 |
| user5@company.in | user5 |
| a@gmail.com | a |
| b@yahoo.com | b |
| c@outlook.com | c |
| d@gmail.com | d |
| e@company.in | e |
| x@gmail.com | x |
| y@yahoo.com | y |
| z@outlook.com | z |
| p@gmail.com | p |
| q@company.in | q |
| aa@gmail.com | aa |
| bb@yahoo.com | bb |
| cc@outlook.com | cc |
| dd@gmail.com | dd |
| ee@company.in | ee |
| test1@gmail.com | test1 |
| test2@yahoo.com | test2 |
| test3@outlook.com | test3 |
| test4@gmail.com | test4 |
| test5@company.in | test5 |

---

# Q10

## Question

From the column email, extract the text that appears after the at-symbol including the domain name.

## Query

```sql
select email,
       regexp_substr(email,'@.+') as domain_name
from regex_practice;
```

## Output

| email | domain_name |
|---|---|
| karthik@gmail.com | @gmail.com |
| rahul@yahoo.com | @yahoo.com |
| john@outlook.com | @outlook.com |
| steve@gmail.com | @gmail.com |
| arjun@company.in | @company.in |
| meera@gmail.com | @gmail.com |
| rohan@yahoo.com | @yahoo.com |
| alice@company.au | @company.au |
| vinay@gmail.com | @gmail.com |
| sam@outlook.com | @outlook.com |
| neha@gmail.com | @gmail.com |
| tom@yahoo.com | @yahoo.com |
| harry@company.co.uk | @company.co.uk |
| olivia@gmail.com | @gmail.com |
| ankit@company.in | @company.in |
| user1@gmail.com | @gmail.com |
| user2@yahoo.com | @yahoo.com |
| user3@outlook.com | @outlook.com |
| user4@gmail.com | @gmail.com |
| user5@company.in | @company.in |
| a@gmail.com | @gmail.com |
| b@yahoo.com | @yahoo.com |
| c@outlook.com | @outlook.com |
| d@gmail.com | @gmail.com |
| e@company.in | @company.in |
| x@gmail.com | @gmail.com |
| y@yahoo.com | @yahoo.com |
| z@outlook.com | @outlook.com |
| p@gmail.com | @gmail.com |
| q@company.in | @company.in |
| aa@gmail.com | @gmail.com |
| bb@yahoo.com | @yahoo.com |
| cc@outlook.com | @outlook.com |
| dd@gmail.com | @gmail.com |
| ee@company.in | @company.in |
| test1@gmail.com | @gmail.com |
| test2@yahoo.com | @yahoo.com |
| test3@outlook.com | @outlook.com |
| test4@gmail.com | @gmail.com |
| test5@company.in | @company.in |


---

# Q11

## Question

From the column email, extract only the domain name without including the at-symbol.

## Query

```sql
select
    email,
    REPLACE(
        regexp_substr(email, '@.+'),
        '@',
        ''
    ) as domain_name
from regex_practice;
```

## Output

| email                                             | domain_name   |
| ------------------------------------------------- | ------------- |
| [karthik@gmail.com](mailto:karthik@gmail.com)     | gmail.com     |
| [rahul@yahoo.com](mailto:rahul@yahoo.com)         | yahoo.com     |
| [john@outlook.com](mailto:john@outlook.com)       | outlook.com   |
| [steve@gmail.com](mailto:steve@gmail.com)         | gmail.com     |
| [arjun@company.in](mailto:arjun@company.in)       | company.in    |
| [harry@company.co.uk](mailto:harry@company.co.uk) | company.co.uk |
| [test5@company.in](mailto:test5@company.in)       | company.in    |

---

# Q12

## Question

From the column email, extract only the text that appears after the last dot in the email address.

## Query

```sql
select 
    email,
    regexp_substr(email, '[^.]+$') as extension
from regex_practice;
```

## Output

| email                                             | extension |
| ------------------------------------------------- | --------- |
| [karthik@gmail.com](mailto:karthik@gmail.com)     | com       |
| [arjun@company.in](mailto:arjun@company.in)       | in        |
| [alice@company.au](mailto:alice@company.au)       | au        |
| [harry@company.co.uk](mailto:harry@company.co.uk) | uk        |
| [test5@company.in](mailto:test5@company.in)       | in        |

---

# Q13

## Question

From the column mixed_value, extract only alphabetic characters that appear together as a continuous sequence.

## Query

```sql
select mixed_value,
       regexp_substr(mixed_value,'[A-Za-z]+') aplha_continouus
from regex_practice;
```

## Output

| mixed_value | aplha_continouus |
| ----------- | ---------------- |
| abc123xyz   | abc              |
| test45done  | test             |
| spark12sql  | spark            |
| etl999job   | etl              |
| log55555    | log              |
| ee55555     | ee               |

---

# Q14

## Question

From the column mixed_value, extract only numeric characters that appear together as a continuous sequence.

## Query

```sql
select mixed_value,
       regexp_substr(mixed_value,'[0-9]+') digits_continouus
from regex_practice;
```

## Output

| mixed_value | digits_continouus |
| ----------- | ----------------- |
| abc123xyz   | 123               |
| test45done  | 45                |
| spark12sql  | 12                |
| etl999job   | 999               |
| log6666     | 6666              |
| ee55555     | 55555             |

---

# Q15

## Question

From the column full_text, extract exactly the first three characters of the value.

## Query

```sql
select full_text,
       regexp_substr(full_text,'^.{3}') as first_three
from regex_practice;
```

## Output

| full_text    | first_three |
| ------------ | ----------- |
| EMP001_IN_91 | EMP         |
| USR11_IN     | USR         |
| ACC_1001_91  | ACC         |
| ORD-11-IN    | ORD         |
| UK44CODE     | UK4         |
| AUS61CODE    | AUS         |
|              |             |

---
