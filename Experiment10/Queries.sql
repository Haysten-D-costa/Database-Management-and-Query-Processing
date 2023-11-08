-- oracle (*)
 
CREATE TABLE emp_21co56
(  E_id number(3) PRIMARY KEY,
   E_name varchar(20),
   Salary number(5),
   HireDate date,
   Job varchar(12),
   D_id number(3),
   M_id number(3)
);

INSERT INTO emp_21co56 VALUES(707, 'Vishal' ,9500, '05-jan-2001' , 'Manager', 30, null);
INSERT INTO emp_21co56 VALUES(705, 'Lalit' ,6500, '10-jan-2001' , 'Manager', 20, 707);
INSERT INTO emp_21co56 VALUES(701, 'Deepak' ,8000, '05-feb-2001' , 'Analyst', 30, 707);
INSERT INTO emp_21co56 VALUES(702, 'Naresh' ,9000, '27-nov-2003' , 'Manager', 10, 707);
INSERT INTO emp_21co56 VALUES(703, 'Sumesh' ,7000, '08-oct-2002' , 'Salesman', 20, 705);
INSERT INTO emp_21co56 VALUES(704, 'Aditya' ,9000, '04-nov-2004' , 'Analyst', 30, 707);
INSERT INTO emp_21co56 VALUES(706, 'Amit' ,null, '01-jan-2001' , 'Clerk', 10, 702);
INSERT INTO emp_21co56 VALUES(708, 'Sumit' ,8000, '06-jan-2006' , 'Accountant', 10, 702);

SELECT * FROM Emp_21co56;

-- 1)Create a trigger for the employee table that would fire for INSERT or UPDATE operations 
--   performed on the employee table. This trigger will display the salary difference between the old values and new values.
CREATE OR REPLACE TRIGGER displaySalaryDiff
AFTER INSERT OR UPDATE ON Emp_21co56
FOR EACH ROW
DECLARE
    sal_diff number;
BEGIN
    sal_diff := :new.Salary - :old.Salary;
    dbms_output.put_line('Salary difference : '|| sal_diff);
END
/


-- 2)Convert employee name into uppercase whenever an employee record is inserted or updated. Trigger to be fired before the insert or update.


-- 3)Trigger before deleting a record from emp table. Trigger will insert the row to be deleted 
--   into another table.


-- 4)Program to indicate invalid salary (if salary is more than 9000) condition using Trigger