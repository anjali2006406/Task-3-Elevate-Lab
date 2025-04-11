# SQL_for_Data_Analysis

# Task 3: Elevate Labs

#  Online Bookstore SQL Analysis

This project is a detailed SQL analysis of an **Online Bookstore**, built using datasets such as **Books**, **Customers**, and **Orders**. Using SQL queries, we explore data-driven insights like book trends, sales by genres/authors, customer distribution, and order behaviors.

---

---

##  Dataset Overview

### Books.csv
Contains metadata of books available in the store.

| Column Name      | Description                      |
|------------------|----------------------------------|
| `book_id`        | Unique ID of the book            |
| `title`          | Title of the book                |
| `author`         | Author of the book               |
| `genre`          | Genre of the book                |
| `price`          | Price in currency format         |
| `published_year` | Year of publication              |
| `stock`          | Total copies available in stock  |

### Customers.csv
Represents customers who have placed orders.

| Column Name  | Description                   |
|--------------|-------------------------------|
| `customer_id`| Unique ID for each customer   |
| `name`       | Name of the customer          |
| `country`    | Country the customer belongs to|

### Orders.csv
Each row represents a transaction made by a customer.

| Column Name  | Description                           |
|--------------|---------------------------------------|
| `order_id`   | Unique ID of the order                |
| `customer_id`| Who placed the order                  |
| `book_id`    | Which book was ordered                |
| `quantity`   | How many units were purchased         |
| `order_date` | Date on which order was placed        |

---

## Project Objective

To extract meaningful insights using SQL queries such as:
- Sales distribution by genre and author
- Customer geographic segmentation
- Inventory insights
- Book popularity and pricing trends

---


## SQL Query Analysis :-


1. Retrieve all books in the "Fiction" Genre
``` sql
SELECT * FROM books WHERE 'Fiction' = genre;

2. Find books published after 1950**

```sql
 SELECT * FROM books WHERE published_year > 1950;

3. List all customers from Canada

```sql
 SELECT * FROM customers WHERE country = 'Canada';

4 .Show orders placed in November 2023

``` sql
SELECT * FROM orders 
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

5 .Retrieve total stock of books available

```sql
 SELECT SUM(stock) AS total_stock FROM books;

6 .Most expensive book

```sql
 SELECT * FROM books ORDER BY price DESC LIMIT 1;

7. Total number of books sold per genre

```sql
 SELECT b.genre, SUM(o.quantity) AS total_books_sold 
FROM orders o 
JOIN books b ON o.book_id = b.book_id 
GROUP BY b.genre;

8 . Average price of books in "Fantasy" genre

```sql
 SELECT AVG(price) AS average_price 
FROM books 
WHERE genre = 'Fantasy';

9 .Most frequently ordered book

```sql
 SELECT o.book_id, b.title, COUNT(o.order_id) AS order_count 
FROM orders o 
JOIN books b ON o.book_id = b.book_id 
GROUP BY o.book_id, b.title 
ORDER BY order_count DESC 
LIMIT 1;

10. Top 3 most expensive books in "Fantasy" genre

```sql
 SELECT * FROM books 
WHERE genre = 'Fantasy' 
ORDER BY price DESC 
LIMIT 3;

11 . Total quantity of books sold by each author

```sql
 SELECT b.author, SUM(o.quantity) AS total_books_sold 
FROM orders o 
JOIN books b ON o.book_id = b.book_id 
GROUP BY b.author;

 **Learnings**
 
- SQL provides a scalable way to analyze large datasets.
- Joins and aggregations can uncover real business insights.
- Practiced filtering, grouping, joins, order by, and subqueries.

**Bonus Tips**

- Use EXPLAIN to optimize slow queries.
- Index foreign keys like customer_id, order_id, and product_id.
- Save commonly used queries as views or stored procedures.

  **Author**
  Anjali singh Aspiring Business and Data Analyst





