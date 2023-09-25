-- QUERY 01 : Create the above tables as emp_rollno and dept_rollno and display the data…
CREATE TABLE dept_21co56
(   
    D_id int(3) PRIMARY KEY,
    D_name varchar(20),
    D_loc varchar(20),
    Mgr_id int(3)
);

INSERT INTO dept_21co56 VALUES
    (10, "Accounts", "Banglore", 702),
    (20, "Sales", "Delhi", 705),
    (30, "Research", "Pune", 707),
    (40, "Developing", "Hydrabad", NULL);

