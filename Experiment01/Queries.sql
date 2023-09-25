-- Query 1: Write a SQL statement to create a simple table country including columns country_id,
-- country_name and region_id.
CREATE TABLE country 
(
    country_id int(5),
    country_name varchar(20),
    region_id int(5)
);

-- Query 2: Display the structure of country table
DESCRIBE country;

-- Query 3: Write a SQL statement to create a duplicate copy of countries table including structure
-- and data by name dup_country.
CREATE TABLE dup_country AS 
SELECT * FROM country;

-- Query 4: Display the structure of dup_country table
DESCRIBE dup_country;

-- Query 5 : Write a SQL statement to create a table named jobs including columns job_id(
-- primary key), job_title (Not Null and unique), min_salary, max_salary and check whether the
-- max_salary amount exceeding the upper limit 25000.
CREATE TABLE jobs
(
    job_id int(5) PRIMARY KEY,
    job_title varchar(20) NOT NULL UNIQUE,
    min_salary float,
    max_salary float CHECK (max_salary > 25000)
);

-- Query 6: Display the structure of jobs table
DESCRIBE jobs;

-- Query 7: Write a SQL statement to rename the table country to country_new.
RENAME TABLE country TO country_new;

-- Query 8 : Display the structure of country_new table
DESCRIBE TABLE country_new;

-- Query 9 : Write a SQL statement to add a column area to the table country_new.
ALTER TABLE country_new
ADD area varchar(20);

-- Query 10 : Display the structure of country_new table
DESCRIBE country_new;

-- Query 11 : Perform the following on country_new table
    
-- a. Add primary key constraint to country_id field.
ALTER TABLE country_new 
ADD PRIMARY KEY (country_id);

-- b. Display the structure of country_new table
DESCRIBE country_new;

-- c. Modify the length of country_id field to adding more 5 digits
ALTER TABLE country_new 
MODIFY country_id int(10);

-- d. Display the structure of country_new table
DESCRIBE country_new;

-- e. Rename the column name region_id to regionid
ALTER TABLE country_new
CHANGE region_id regionID int(5);

-- f. Display the structure of country_new table
DESCRIBE country_new;

-- g. Drop column area
ALTER TABLE country_new DROP COLUMN area; 

-- h. Display the structure of country_new table
DESCRIBE country_new;

-- Query 12 : Insert 5 records in country_new table
INSERT INTO country VALUES
    (1, "United States", 1),
    (2, "Canada", 1),
    (3, "United Kingdom", 2),
    (4, "Australia", 3),
    (5, "Germany", 2);

-- Query 13: Display the details of country_new table
SELECT * FROM country_new;

-- Query 14 : Truncate country_new
TRUNCATE TABLE country_new;

-- Query 15 : Display the details of country_new table
SELECT * FROM country_new;

-- Query 16 : Display the structure of country_new table
DESCRIBE country_new;

-- Query 17 : Drop table country_new
DROP TABLE country_new;

-- Query 18 : Display the structure of country_new table
DESCRIBE country_new;