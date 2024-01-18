-- Add Primary key using alter....
ALTER TABLE table1
ADD PRIMARY KEY(col_1);

-- Add Constraint with constraint name....
ALTER TABLE table1
ADD CONSTRAINT uk UNIQUE (col_2);

-- Dropping unique key constraint, using constraint name (uk)....
ALTER TABLE table1 
DROP CONSTRAINT uk;

-- Adding and Removing NOT NULL Constraints on columns....
ALTER TABLE table1 MODIFY col_2 int(1) NOT NULL;
ALTER TABLE table1 MODIFY col_2 int(1) NULL;

