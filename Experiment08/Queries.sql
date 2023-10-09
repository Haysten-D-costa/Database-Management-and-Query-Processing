-- Creating Table as per requirements....
CREATE TABLE Sales
(
    O_id int(5) PRIMARY KEY, 
    O_name varchar(20), 
    Previous_balance int(5),
    Customer varchar(20)
);

-- Inserting data as per requirements....
INSERT INTO Sales
VALUES
(11, "ord1", 2000, "Alex"),
(12, "ord2", 1000, "Adam"),
(13, "ord3", 2000, "Abhi"),
(14, "ord4", 1000, "Adam"),
(15, "ord5", 2000, "Alex");

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

-- Delete a record in Sale(rollno)1 and then display the contents of sale(rollno)1 and Sales tables....
DELETE FROM Sales_21co56_01
WHERE O_id = 11;

SELECT * FROM Sales;
SELECT * FROM Sales_21co56_01;

-- Create Sale(rollno)5 view for sale table containing all details of sale table. Use read only clause and test by using update statement....
CREATE VIEW Sales_21co56_05
AS SELECT * FROM Sales
WITH READ ONLY;

UPDATE Sales_21co56_05
SET O_name = "Aryann"
WHERE O_id = 13;

-- Drop view  Sale(rollno)5....
DROP VIEW Sales_21co56_05;