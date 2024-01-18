CREATE DATABASE PPractice; --creating a database...
USE PPractice; --using a database...

CREATE TABLE Table1 ( --creating a table...
    col1 int(2),
    col2 varchar(20),
    col3 float,
    col4 date,
    col5 int(5),
    col6 varchar(10)
);

--ALTER TABLE COMMANDS : 
    --1. To add columns...
    --2. To drop columns...
    --3. To MODIFY(DATATYPE) and CHANGE(RENAME)...
    --4. To rename columns...

ALTER TABLE table1 -- add new column...
ADD col4 date; 

ALTER TABLE table1 -- add multiple new columns...
ADD (
   col5 int(5),
   col7 int(10) 
);

ALTER TABLE table1 -- drop a column...
DROP COLUMN col5;

ALTER TABLE table1 -- modify column datatype (DM)...
MODIFY col1 varchar(1);

ALTER TABLE table1 -- rename the column....
CHANGE COLUMN col1 col_1 int(5);

RENAME TABLE table1 TO table_1; -- rename table....
DROP TABLE table1; -- drop table....
TRUNCATE TABLE table1; -- truncate table....
DESCRIBE table1; -- describe table....