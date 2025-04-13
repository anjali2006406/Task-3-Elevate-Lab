# Key SQL Questions and Insights

---

### Q1. Retrieve All Books in the "Fiction" Genre

**Concepts: SELECT, WHERE**

**Input Query:**
 SELECT * FROM books WHERE 'Fiction' = Genre;

**Result Output**

![IMG-20250411-WA0007](https://github.com/user-attachments/assets/b2b90043-dd91-45c1-a529-694a6399a4f3)

---

### **Q2. Find the books published after the year 1950**

 **Concepts**: SELECT, WHERE, Comparison Operator

**Input Query:**
SELECT * FROM books WHERE published_year > 1950;

**Result Output** 

![IMG-20250411-WA0010](https://github.com/user-attachments/assets/dfc272da-9cde-4eab-be3c-48d8510d91ed)

---

### **Q3.  List all the customers from Canada**
 
 **Concepts: SELECT, WHERE**

 **Input Query:**
  SELECT * FROM customers WHERE country = 'Canada';

 **Result Output**
 
 ![IMG-20250411-WA0006](https://github.com/user-attachments/assets/635ff4dd-bc80-41f5-b55e-d2e5b8b56861)

 --- 
 
 ### **Q4. Show orders placed in November 2023**

**Concepts: SELECT, WHERE, BETWEEN, DATE**

**Input Query**
SELECT * FROM orders WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

**Result Output**

![IMG-20250411-WA0004](https://github.com/user-attachments/assets/b7a82656-f28a-4d9f-ac2b-430dc838d8bc)

---

### **Q5.Retrieve the total stock of books available**

**Concepts: SELECT, SUM(), Aggregation**

**Input Query:**
 SELECT SUM(stock) AS total_stock FROM books;

**Result Output**

![IMG-20250411-WA0008](https://github.com/user-attachments/assets/4b435c45-00e6-482f-9677-7c8e87b03968)

---

### **Q6.Find the details of the most expensive book**

**Concepts: SELECT, ORDER BY, LIMIT**

**Input Query:**
 SELECT * FROM books ORDER BY price DESC LIMIT 1;

**Result Output**

![IMG-20250411-WA0003](https://github.com/user-attachments/assets/888b5b10-3f37-4bc2-86a5-4c754c1468d6)

---

### **Q7.Retrive the total number of books sold for each genre?**

**Concepts:SELECT, JOIN, GROUP BY, SUM()**

**Input Query:**
 SELECT b.genre, SUM(o.quantity) AS total_books_sold 
FROM orders o
JOIN books b ON o.book_id = b.book_id 
GROUP BY b.genre;

**Result Output**

![IMG-20250411-WA0002](https://github.com/user-attachments/assets/b5343033-2d88-455b-a2e9-4bbcd080f584)

---

### **Q8.Find the average price of books in the "Fantancy genre"?**

**Concepts:SELECT, WHERE, AVG()**

**Input Query:**
 SELECT AVG(price) AS Average_price FROM books WHERE Genre = 'Fantasy';

**Result Output**

![IMG-20250411-WA0009](https://github.com/user-attachments/assets/9db5efca-47b4-4717-a0bf-478b85768982)

---

### **Q9.Find the most frequently ordered book?**

**Concepts:SELECT, JOIN, GROUP BY, COUNT(), ORDER BY, LIMIT**

**Input Query:**
 select o.book_id,b.title,count(o.order_id)as order_count from orders o
join books b on o.book_id=b.book_id
group by o. book_id ,b.title order by order_count desc limit 1;

**Result Output**

![IMG-20250411-WA0011](https://github.com/user-attachments/assets/c226aee7-5c82-409b-9338-f0bc1dfddbc5)

---

### **Q10.Show the top 3 most expensive books of 'Fantancy' genre?**

**Concepts: SELECT, WHERE, ORDER BY, LIMIT**

**Input Query:**
select * from books where genre = 'Fantasy' order by price desc limit 3;

**Result Output**

![IMG-20250411-WA0005](https://github.com/user-attachments/assets/0e007a41-4ef3-43e1-ae36-379d9d85a06d)

---

### **Q11.Retrive the total quantity of books sold by each author ?**

**Concepts: SELECT, JOIN, GROUP BY, SUM()**

**Input Query:**
 select b.author, Sum(O.quantity) as total_books_sold
from orders  o 
join books b on O.book_id = b.book_id group by b.author;

**Result Output:**

![IMG-20250411-WA0001](https://github.com/user-attachments/assets/daa3c42a-0c98-4ec3-9722-2d9d558c69dd)


















