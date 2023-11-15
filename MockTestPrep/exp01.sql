CREATE TABLE Person
(   id int(3),
    name VARCHAR(20) NOT NULL
);

/* ALTER TABLE QUERIES : */

-- ADD COLUMN.....
ALTER TABLE Person
ADD COLUMN age int(3) DEFAULT 1;

-- MODIFY COLUMN.....
ALTER TABLE Person
MODIFY COLUMN age int(5);

-- RENAMING A COLUMN.....
ALTER TABLE Person
RENAME COLUMN id TO p_id; -- doesnt work....

-- ADDING A PRIMARY KEY.....
ALTER TABLE Person
ADD PRIMARY KEY (id);

-- ADDING A FOREIGN KEY.....
ALTER TABLE orders
ADD CONSTRAINT fk_employee
FOREIGN KEY (employee_id)
REFERENCES employees(employee_id);

-- ADDING A CHECK CONSTRAINT....
ALTER TABLE Person
ADD CHECK (age > 0);
