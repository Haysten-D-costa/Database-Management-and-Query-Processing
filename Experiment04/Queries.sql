-- Query 01 : Create a table named sales_21co56, wish specification as above....
CREATE TABLE sales_21co56
(   order_no int(5) PRIMARY KEY,
    purchae_amt float,
    order_date date DEFAULT sysdate(), 
    customer_id int(5),
    salesman_id int(5)
);

-- Query 02 : Insert the data in the table as above....
INSERT INTO sales_21co56 VALUES
(70001, 150.5, "2012-10-05", 3005, 5002),
(70009, 270.65, "2012-09-10", 3001, 5005),
(70002, 65.26, "2012-10-05", 3002, 5001),
(70004, 110.5, "2012-08-17", 3009, 5003),
(70007, 948.5, "2012-09-10", 3005, 5002),
(70005, 2400.6, "2012-07-27", 3007, 5001),
(70008, 5760, "2012-09-10", 3002, 5001),
(70010, 1983.43, "2012-10-10", 3004, 5006),
(70003, 2480.4, "2012-10-10", 3009, 5003),
(70012, 250.45, "2012-06-27", 3008, 5002),
(70011, 75.29, "2012-08-17", 3003, 5007),
(70013, 3045.6, "2012-04-25", 3002, 5001);

-- Describe and Display the table....
DESCRIBE sales_21co56;
SELECT * FROM sales_21co56;

-- Query 03 : Write an SQL statement to find the total purchase amount for all orders....
SELECT sum(purchase_amt) 
FROM sales_21co56;

-- Query 04 : Write an SQL statement to find the average purchase amount of all orders....
SELECT avg(purchase_amt) 
FROM sales_21co56;

-- Query 05 : Write an SQL statement to find the no. of salesman currently listing for all of their customers....
SELECT count(DISTINCT salesman_id) 
FROM sales_21co56;

-- Query 06 : Write an SQL statement to get the maximum purchase amount of all the orders....
SELECT max(purchase_amt) 
FROM sales_21co56;

-- Query 07 : Write an SQL statement to get the minimum purchase amount of all the orders....
SELECT min(purchase_amt) 
FROM sales_21co56;

-- Query 08 : Write an SQL statement to find the highest amt ordered by each customer....
SELECT customer_id, max(purchase_amt)
FROM sales_21co56
GROUP BY customer_id;

--Query 09 : Write an SQL statement to find the highest purchase amount ordered by each customer on a particular date with their ID, order_date, and highest purchase amount....
SELECT customer_id, order_date, max(purchase_amt)
FROM sales_21co56
GROUP BY customer_id, order_date;

-- Query 10 : Write an SQL statement to find the highest purchase amount on a date 2012-08-17 for each salesman with their ID....
SELECT salesman_id, order_date, max(purchase_amt)
FROM sales_21co56
GROUP BY salesman_id, order_date
HAVING order_date = "2012-08-17";

-- Query 11 : Write an SQL statement to find the highest purchase amount with theur ID and order date, for only those customers who have highest purchase amount in a day more than 2000....
SELECT customer_id, order_date, max(purchase_amt)
FROM sales_21co56
GROUP BY customer_id, order_date
HAVING max(purchase_amt) > 2000;

-- Query 12 : Write an SQL statement to find the highest purchase amount with their ID and order date, for those customers who have higher purchase amount in a day is within the range 2000 and 6000....
SELECT customer_id, order_date, max(purchase_amt)
FROM sales_21co56
GROUP BY customer_id, order_date
HAVING max(purchase_amt) BETWEEN 2000 AND 6000;

-- Query 13 : Write an SQL statement to find the highest purchase amount with their ID and order date, for those customers who have higher purchase amount in a day is within the list 2000, 3000, 5760, 6000....
SELECT customer_id, order_date, max(purchase_amt)
FROM sales_21co56
GROUP BY customer_id, order_date
HAVING max(purchase_amt) IN ("2000", "3000", "5760", "6000");

-- Query 14 : Write an SQL statement to count all orders for a date "August 17th 2012"....
SELECT order_date, count(order_date)
FROM sales_21co56
GROUP BY order_date
HAVING order_date = "2012-08-17";