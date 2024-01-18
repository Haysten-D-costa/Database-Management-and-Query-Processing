CREATE TABLE Customer_21co56
(
    first_name varchar(20),
    last_name varchar(20)
);

INSERT INTO Customer_21co56 VALUES 
("Stephen", "Jones"),
("Mark", "Smith"),
("Denise", "King"),
("Paula", "Johnson"),
("Richard", "Archer");

CREATE TABLE Employee_21co56
(
    first_name varchar(20),
    last_name varchar(20)
);

INSERT INTO Employee_21co56 VALUES
("Christina", "Jones"),
("Michael", "McDonald"),
("Paula", "Johnson"),
("Stephen", "Jones"),
("Richard", "Smith");

-- 1. Display the details all customer and employee records.
SELECT * FROM Customer_21co56
UNION ALL
SELECT * FROM Employee_21co56;

-- 2. Display the details all customer and employee records. Also,
--    a. Add a value for record_type field called ‘Customer’ if data coming from Customer table and ‘Employee’ if data coming from Employee table
SELECT first_name, last_name, 'Customer' as record_type FROM Customer_21co56
UNION ALL
SELECT first_name, last_name, 'Employee' as record_type FROM Employee_21co56;

--    b. Order the data by record_type, last_name, first_name; (Note:Separate output to be taken for 2a and 2b)
SELECT first_name, last_name, 'Customer' as record_type FROM Customer_21co56
UNION ALL
SELECT first_name, last_name, 'Employee' as record_type FROM Employee_21co56
ORDER BY record_type, last_name, first_name;


-- 3. Display the details all customer and employee records where the first name is Richard.
SELECT * FROM Customer_21co56 WHERE first_name = "Richard"
UNION ALL
SELECT * FROM Employee_21co56 WHERE first_name = "Richard";

-- 4. Display the details all customer and employee records without removing duplicates(union all)
SELECT * FROM Customer_21co56 
UNION ALL 
SELECT * FROM Employee_21co56;

-- 5. Find all names (both first name and last name) in the customer table that don’t exist in the employee table.(minus)
SELECT * FROM Customer_21co56
EXCEPT
SELECT * FROM Employee_21co56;

-- 6. Find all names that are in both the customer and employee table.(intersect)
SELECT * FROM Customer_21co56
INTERSECT
SELECT * FROM Employee_21co56;
