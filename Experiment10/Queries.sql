-- oracle (*)

CREATE TABLE emp_21co56
(  eid number(3) PRIMARY KEY,
   ename varchar(20),
   salary number(5),
   hire_date date,
   job varchar(12),
   did number(3),
   mid number(3)
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
AFTER UPDATE OR INSERT 
ON Emp_21co56
FOR EACH ROW
DECLARE
    sal_diff number;
BEGIN
    sal_diff := :new.salary - :old.salary;
    dbms_output.put_line('Old salary : '|| :old.salary);
    dbms_output.put_line('New salary : '|| :new.salary);
    dbms_output.put_line('Salary difference : '|| sal_diff);
END;
/

INSERT INTO Emp_21co56
VALUES (711, 'Rahul', 6500, '13-Nov-23', 'Clerk', 10, 702);

UPDATE Emp_21co56
SET salary = 9000
WHERE eid = 711;

-- 2)Convert employee name into uppercase whenever an employee record is inserted or updated. 
--   Trigger to be fired before the insert or update.
CREATE OR REPLACE TRIGGER toUpperCase
BEFORE INSERT OR UPDATE
ON Emp_21co56
FOR EACH ROW
BEGIN
    :new.ename := UPPER(:new.ename);
END;
/

INSERT INTO Emp_21co56
VALUES (755, 'Saish', 9500, '13-may-03', 'Manager', 30, 705);

UPDATE Emp_21co56 SET
SET ename = 'Ajay'
WHERE eid = 705;

SELECT * FROM Emp_21co56;

-- 3)Trigger before deleting a record from emp table. Trigger will insert the row to be deleted 
--   into another table.

CREATE TABLE Emp_temp
(  eid number(3) PRIMARY KEY,
   ename varchar(20),
   salary number(5),
   hire_date date,
   job varchar(12),
   did number(3),
   mid number(3)
);

CREATE OR REPLACE TRIGGER alertDelete
BEFORE DELETE 
ON Emp_21co56
FOR EACH ROW
BEGIN 
    INSERT INTO Emp_temp VALUES (
        :old.eid, :old.ename, :old.salary,
        :old.hire_date, :old.job, :old.did, :old.mid
    );
END;
/

DELETE FROM Emp_21co56
WHERE eid = 755;

SELECT * FROM Emp_21co56;
SELECT * FROM Emp_temp;


-- 4)Program to indicate invalid salary (if salary is more than 9000) condition using Trigger
CREATE OR REPLACE TRIGGER invalidSalary
BEFORE INSERT OR UPDATE
ON Emp_21co56
FOR EACH ROW
BEGIN
    if(:new.salary > 9000)
    then
        raise_application_error(-20123, 'Invalid salary, salary cannot be more than 9000.');
    end if;
END;
/

UPDATE Emp_21co56 
SET salary = 9999
WHERE eid = 711;

UPDATE Emp_21co56
SET salary = 8999
WHERE eid = 711;