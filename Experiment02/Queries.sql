-- Query 1 : Create a table EMPLOYEE with following schema:
-- EMPLOYEE(Emp_no, E_name, E_address, E_ph_no, E_emailid, Dept_no, Dept_name, Job_id , Salary) 
-- Data Types: 
    -- Emp_no- int(2), E_name- varchar, E_address - varchar, E_ph_no- int(6), E_emailid- varchar, 
    -- Dept_no varchar, Dept_name varchar, Job_id varchar, Salary int(6)
CREATE TABLE employee
(
    E_no int(2),
    E_name varchar(20),
    E_address varchar(20),
    E_phno int(6),
    E_email varchar(20),
    D_no varchar(20),
    D_name varchar(20),
    job_id varchar(20),
    salary int(6)
);

-- Query 2: Insert atleast 10 rows in the table.( 3 records using single record , 3 using
-- specific columns and 4 records using multiple rows)

-- 3 records using single rows : (Update names as required !)
INSERT INTO employee
VALUES (1, "AAA", "aaa", 999999, "a@gmail.com", "10", "D10", 1, 10000);
INSERT INTO employee
VALUES (2, "BBB", "bbb", 888888, "b@gmail.com", "12", "SALES", 2, 20000);
INSERT INTO employee
VALUES (3, "CCC", "ccc", 777777, "c@gmail.com", "11", "COMP", 3, 5000);

-- 3 records using column specific rows : 
INSERT INTO employee (E_no, E_name, E_address, E_phno, E_email, D_no, D_name, job_id, salary)
VALUES (4, "DDD", "ddd", 666666, "d@gmail.com", "D14", "MECH", 4, 25000);
INSERT INTO employee (E_no, E_name, E_address, E_phno, E_email, D_no, D_name, job_id, salary)
VALUES (5, "EEE", "eee", 555555, "e@gmail.com", "D15", "SALES", 5, 4000);
INSERT INTO employee (E_no, E_name, E_address, E_phno, E_email, D_no, D_name, job_id, salary)
VALUES (6, "FFF", "fff", 444444, "f@gmail.com", "D10", "COMP", 13, 2000);

-- 4 records using nultiple rows : 
INSERT INTO employee VALUES
    (7, "GGG", "ggg", 333333, "g@gmail.com", "D40", "ECE", 10, 1110),
    (8, "HHH", "hhh", 222222, "h@gmail.com", "D22", "ECE", 20, 55000),
    (9, "III", "iii", 111111, "i@gmail.com", "D40", "MECH", 25, 10000),
    (10, "JJJ", "jjj", 000000, "j@gmail.com", "D5", "SALES", 9, 9000);

-- Query 03 : Display all the information of employee table…
SELECT * 
FROM employee;

-- Query 04 : Display the record of each employee who works in department D15…
SELECT *
FROM employee 
WHERE D_no="D15";

-- Query 05 : Update the address of employee with employee id as 6, as ponda…
UPDATE employee
SET E_address="Ponda" 
WHERE E_no=6;

-- Query 06 : Display the details of employee who works in department MECH…
SELECT * 
FROM employee 
WHERE D_name="MECH";

-- Query 07 : Delete the email id of employee Ram Naik (Using update command)…
UPDATE employee
SET E_email=NULL 
WHERE E_name="Ram Naik";

-- Query 08 : Display the complete record of employees working in COMP Department…
SELECT * 
FROM employee 
WHERE D_name="COMP";

-- Query 09 : Display the details of employee who works in department SALES and studying in Assagao…
SELECT *
FROM employee 
WHERE D_name="SALES" AND E_address="Assagao"

-- Query 10 : Display the employee details having salary between 10000 and 15000…
SELECT *
FROM employee 
WHERE (salary>10000 AND salary<30000);

-- Query 11 : Delete the employee having salary less than 10000…
DELETE FROM employee
WHERE (salary < 10000);
