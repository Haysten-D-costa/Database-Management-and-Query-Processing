-- Query 01 List name and salary of only those employees having salary more than any of the 
--          employee working as Analyst.
SELECT E_name, E_salary FROM emp_21co56
WHERE E_salary > ANY (
    SELECT E_salary FROM emp_21co56
    WHERE E_job="Analyst"
);

-- Query 02 List name and salary of only those employees having salary more than every employee 
-- working as Analyst.
SELECT E_name, E_salary FROM emp_21co56
WHERE E_salary > ALL (
    SELECT E_salary FROM emp_21co56
    WHERE E_job = "Analyst" 
);

-- Query 03 Display the employee who got the maximum salary
SELECT * FROM emp_21co56
WHERE E_salary = (
    SELECT max(E_salary) FROM emp_21co56
);

-- Query 04 Find out the number of employees working in Sales department.
SELECT count(*) AS "No. of Employees" FROM emp_21co56
WHERE D_id = (
    SELECT D_id FROM dept_21co56
    WHERE D_name = "Sales"
);

-- Query 05 Delete the employees who are working in accounts department.
DELETE FROM emp_21co56
WHERE D_id = (
    SELECT D_id FROM dept_21co56 
    WHERE D_name = "Accounts"
);

-- Query 06 Display the employees who are working in Sales department.
SELECT * FROM emp_21co56
WHERE D_id = (
    SELECT D_id FROM dept_21co56
    WHERE D_name = "Sales"
);

-- Query 07 Display name of those employees having DID same as that of Sumesh
SELECT E_name FROM emp_21co56
WHERE D_id = (
    SELECT D_id FROM emp_21co56  
    WHERE E_name = "Sumesh" 
);

-- Query 08 List out the employees who earn more than the average salary of their department order 
-- by department number.
SELECT e.E_id, e.E_name, e.E_salary, e.D_id
FROM emp_21co56 e
INNER JOIN (
    SELECT D_id, AVG(E_salary) AS avg_salary
    FROM emp_21co56
    GROUP BY D_id
) AS avg_salaries
ON e.D_id = avg_salaries.D_id
WHERE e.E_salary > avg_salaries.avg_salary
ORDER BY e.D_id;

-- Query 09 Find the employee with the second highest salary in the employee table
SELECT E_id, E_name, E_salary FROM emp_21co56
WHERE E_salary = (
    SELECT max(E_salary) FROM emp_21co56
    WHERE E_salary != (
        SELECT max(E_salary) FROM emp_21co56
    )
);

-- Query 10. Find out the employees who earned the highest Salary in each job typed sort in 
-- descending Salary order.
SELECT E_id, E_name, E_salary, E_job
FROM emp_21co56 e1
WHERE E_salary = (
    SELECT MAX(E_salary)
    FROM emp_21co56 e2
    WHERE e2.E_job = e1.E_job
)
ORDER BY E_salary DESC;
