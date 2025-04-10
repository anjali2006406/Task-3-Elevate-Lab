create database onlinebookstore;
use onlinebookstore;

select * from books;
select * from customers;
select * from orders;

-- 1.  Retrive all books in the "Fiction" Genre ?
select * from books where 'Fiction'= Genre;

-- 2. Find the books published after the year 1950?
select * from books where published_year > 1950;

-- 3. List all the customers from the canada ?
select * from customers where country = 'Canada';

-- 4. Show orders placed in November 2023?
select * from orders where order_date between '2023-11-01'and '2023-11-30';

-- 5. Retrive the total stock of books available?
select sum(stock) as total_stock from books;

-- 6 Find the details of the most expensive books?
select * from books order by price desc limit 1;


-- 7 Retrive the total number of books sold for each genre?
SELECT 
    b.genre, SUM(o.quantity) AS total_books_sold FROM orders o
    JOIN books b ON o.book_id = b.book_id GROUP BY b.genre;

-- 8. Find the average price of books in the "Fantancy genre"?
select Avg(price) as Average_price from books where Genre="Fantasy";

-- 9. Find the most frequently ordered book?
select o.book_id,b.title,count(o.order_id)as order_count from orders o
join books b on o.book_id=b.book_id
group by o. book_id ,b.title order by order_count desc limit 1;

-- 10. Show the top 3 most expensive books of 'Fantancy' genre?
select * from books where genre = 'Fantasy' order by price desc limit 3;

-- 11. Retrive the total quantity of books sold by each author ?
select b.author, Sum(O.quantity) as total_books_sold
from orders  o 
join books b on O.book_id = b.book_id group by b.author;


