-- 1. Inserting a single record : 
INSERT INTO table1
VALUES (1, 2, 3.5);

-- 2. Inserting a single row with specific columns : 
INSERT INTO table1(col_1, col_3)
VALUES (1, 3.5);

-- 3. Inserting multiple rows : 
INSERT INTO table1
VALUES
    (1, 2, 3.1),
    (4, 5, 6.1),
    (8, 9, 20.5);

-- SELECT Command : 
SELECT * FROM table1;

-- UPDATE Command : 
UPDATE table1
SET col_1 = 100,
    col_2 = 200,
    col_3 = 1000.5
WHERE col_1 = 1;

-- DELETE Command : 
DELETE FROM table1
WHERE col_1 = 8;

DELETE FROM table1; -- Deletes all the rows....