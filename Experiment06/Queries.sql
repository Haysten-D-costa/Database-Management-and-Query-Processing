-- QUERY 01 : Create the above tables as emp_rollno and dept_rollno and display the data....
CREATE TABLE dept_21co56
(   
    D_id int(3) PRIMARY KEY,
    D_name varchar(20),
    D_loc varchar(20),
    Mgr_id int(3)
);

-- -> 1) Create dept table and insert records....
INSERT INTO dept_21co56 VALUES
    (10, "Accounts", "Banglore", 702),
    (20, "Sales", "Delhi", 705),
    (30, "Research", "Pune", 707),
    (40, "Developing", "Hydrabad", NULL);

-- -> 2) Create emp table....
CREATE TABLE emp_21co56
(   
    E_id int(3) PRIMARY KEY,
    E_name varchar(20),
    E_salary int(4),
    E_hireDate date,
    E_job varchar(20),
    D_id int(3) REFERENCES dept_21co56(D_id),
    M_id int(3)
);

-- -> 3) Alter the emp table by making mid foreign key referring to eid primary key of emp table....
ALTER TABLE emp_21co56
ADD FOREIGN KEY(M_id) REFERENCES emp_21co56(D_id);

-- -> 4) Insert the records in emp table....
INSERT INTO emp_21co56 VALUES
    (701, "Deepak", 8000, "2001-01-05", "Analyst", 30, 707),
    (702, "Naresh", 9000, "2001-01-10", "Manager", 10, 707),
    (703, "Sumesh", 7000, "2001-02-05", "Salesman", 20, 705),
    (704, "Aditya", 9000, "2003-11-27", "Analyst", 30, 707),
    (705, "Lalit", 6500, "2002-10-08", "Manager", 20, 707),
    (706, "Amit", NULL, "2004-11-04", "Clerk", 10, 702),
    (707, "Vishal", 9500, "2001-01-01", "Manager", 30, NULL),
    (708, "Sumit", 8000, "2006-01-06", "Accountant", 10, 702);

-- -> Display the emp_21co56 table....
SELECT * FROM dept_21co56;
SELECT * FROM emp_21co56;

-- QUERY 02 : Write a query to get all employee records against all the department records (Cross join)....
SELECT * 
FROM emp_21co56
CROSS JOIN dept_21co56;

-- QUERY 03 : Write a query to Display EID and DName of all employees by joining over DID. (Equi join)....
SELECT E_id, D_name 
FROM dept_21co56 AS d, emp_21co56 AS e
WHERE d.D_id = e.D_id;

-- QUERY 04 : Display EID and DName of employees by joining over MID. (By using left outer join, Right outer join and Full outer join)....

-- left outer join...
SELECT e.E_id, d.D_name 
FROM dept_21co56 AS d
LEFT OUTER JOIN emp_21co56 AS e
ON d.Mgr_id=e.M_id;

-- right outer join...
SELECT e.E_id, d.D_name 
FROM dept_21co56 AS d
RIGHT OUTER JOIN emp_21co56 AS e
ON d.Mgr_id=e.M_id;

-- full outer join...
SELECT e.E_id, d.D_name --MySQL doesn't support FULL OUTER JOIN hence we use UNION....
FROM dept_21co56 AS d
LEFT OUTER JOIN emp_21co56 AS e 
ON d.Mgr_id=e.M_id 
UNION
SELECT e.E_id, d.D_name 
FROM dept_21co56 AS d
RIGHT OUTER JOIN emp_21co56 AS e
ON d.Mgr_id=e.M_id;

-- QUERY 05 : Display the name of employees and name of their managers. (Self join)....
SELECT a.E_name AS manager, b.E_name      
FROM emp_21co56 AS a
JOIN emp_21co56 AS b
ON a.E_id = b.M_id;

-- QUERY 06 : Display EID and DName of all employees by joining over DID (Natural Join)....
SELECT e.E_id, d.D_name      
FROM emp_21co56 AS e
NATURAL JOIN dept_21co56 AS d;