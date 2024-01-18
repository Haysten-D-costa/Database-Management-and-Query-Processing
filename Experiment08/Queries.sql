-- Creating Table as per requirements....
CREATE TABLE Sales
(
    O_id int(5) PRIMARY KEY, 
    O_name varchar(20), 
    Previous_balance int(5),
    Customer varchar(20)
);

-- Inserting data as per requirements....
INSERT INTO Sales VALUES (11, 'ord1', 2000, 'Alex');
INSERT INTO Sales VALUES (12, 'ord2', 1000, 'Adam');
INSERT INTO Sales VALUES (13, 'ord3', 2000, 'Abhi');
INSERT INTO Sales VALUES (14, 'ord4', 1000, 'Adam');
INSERT INTO Sales VALUES (15, 'ord5', 2000, 'Alex');

-- Create a  view "Sale(rollno)1" containing all the details from the sale table.
CREATE VIEW Sales_21co56_01 
AS SELECT * FROM Sales;

-- Display the contents of “Sale(rollno)1”....
SELECT * FROM Sales_21co56_01;

-- Create view "Sale(rollno)2" containing order details and customer name from sale table.....
CREATE VIEW Sales_21co56_02
AS SELECT O_id, O_name, Customer
FROM Sales;

-- Display the contents of  “Sale(rollno)02”....
SELECT * FROM Sales_21co56_02;

-- Create a  view "Sale(rollno)3" containing order and previous balance with the amount increased by 1000 from the sale table....
CREATE VIEW Sales_21co56_03
AS SELECT O_id, O_name, Previous_balance+1000  
FROM Sales;

-- Display the contents of Sale(rollno)3....
SELECT * FROM Sales_21co56_03;

-- Create a  view "Sale(rollno)4"  for the sale table having order id as 13 and 14. Provide with check option clause. Test the clause by using insert and update statement....
CREATE VIEW Sales_21co56_04
AS SELECT * FROM Sales
WHERE O_id IN (13, 14) 
WITH CHECK OPTION;

-- Testing : 
INSERT INTO v4 VALUES (15, "ord5", 5000, "Amit");- insertion...
UPDATE v4 SET O_id=20 WHERE O_name="ord3"; -- updation...

-- Delete a record in Sale(rollno)1 and then display the contents of sale(rollno)1 and Sales tables....
DELETE FROM v1
WHERE O_id = 11;

SELECT * FROM Sales;
SELECT * FROM v1;

-- Create Sale(rollno)5 view for sale table containing all details of sale table. Use read only clause and test by using insert statement....
CREATE VIEW Sales_21co56_05
AS SELECT * FROM Sales
WITH READ ONLY;

INSERT INTO Sales_21co56_05 -- read-only test query....
VALUES (16, 'ord6', 3000, 'Amey');

-- Drop view  Sale(rollno)5....
DROP VIEW Sales_21co56_05;