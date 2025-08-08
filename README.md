# Day4-Sql-internship

# Task 4 – Aggregate Functions & Grouping in SQL

## 📌 Objective
This task demonstrates the use of **aggregate functions**, **GROUP BY**, and **HAVING** clauses to summarize and analyze data from an e-commerce database.

---

## 🛠 Tools Used
- MySQL Workbench 
- SQL Query Language

---

## 📂 Files in This Repository
- **task4_queries.sql** → Contains all SQL queries:
  - Aggregate functions only
  - Aggregate with GROUP BY
  - Aggregate with GROUP BY + HAVING

- **dataset.sql** → Table creation and sample insert statements for:
  - categories
  - products
  - customers
  - orders
  - order_items
  - payments

---

## 📖 Concepts Covered
### Aggregate Functions
- `SUM()` – Adds up numeric values  
- `COUNT(*)` / `COUNT(column)` – Counts all rows / non-NULL values  
- `AVG()` – Calculates average  
- `MAX()` / `MIN()` – Finds highest / lowest value  
- `ROUND()` – Rounds decimal numbers  

### Grouping
- **GROUP BY** – Groups rows to apply aggregate functions per group  
- **HAVING** – Filters groups after aggregation  

---

## 📝 Example Queries

**1. Count of products per category**
```sql
SELECT category_id, COUNT(*) AS total_products
FROM products
GROUP BY category_id;
