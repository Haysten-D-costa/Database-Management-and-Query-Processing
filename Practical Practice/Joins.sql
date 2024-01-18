employee :   +------+-----------------+-----------+---------+--------------------+--------+----------+--------+--------+
             | e_no | e_name          | e_address | e_ph_no | e_email            | dep_no | dep_name | job_id | salary |
             +------+-----------------+-----------+---------+--------------------+--------+----------+--------+--------+
             |    1 | Haysten D'costa | Olaulim   |  999999 | haystend@gmail.com | D10    | COMP     | 1      |  10000 |
             |    2 | Sahil Halankar  | Alorna    |  888888 | sahil@gmail.com    | D15    | SALES    | 2      |  20000 |
             |    4 | Siya Redkar     | Nagpur    |  666666 | siya@gmail.com     | D12    | MECH     | 4      |  25000 |
             |    8 | Tim D'costa     | Quitla    |  222222 | tim@gmail.com      | D22    | ECE      | 20     |  55000 |
             |    9 | Roy Fernandes   | Mapusa    |  111111 | roy@gmail.com      | D12    | MECH     | 25     |  10000 |
             +------+-----------------+-----------+---------+--------------------+--------+----------+--------+--------+
department : +------+------------+------+
             | d_no | d_name     | e_no |
             +------+------------+------+
             |    1 | Computer   |    2 |
             |    2 | Mechanical |    4 |
             |    3 | Electronic |    9 |
             +------+------------+------+

-- INNER JOIN - To select common data between 2 tables....
SELECT *
FROM department
INNER JOIN employee
ON department.e_no = employee.e_no;
+------+------------+------+------+----------------+-----------+---------+-----------------+--------+----------+--------+--------+  
| D_no | D_name     | E_no | e_no | e_name         | e_address | e_ph_no | e_email         | dep_no | dep_name | job_id | salary |  
+------+------------+------+------+----------------+-----------+---------+-----------------+--------+----------+--------+--------+  
|    1 | Computer   |    2 |    2 | Sahil Halankar | Alorna    |  888888 | sahil@gmail.com | D15    | SALES    | 2      |  20000 |  
|    2 | Mechanical |    4 |    4 | Siya Redkar    | Nagpur    |  666666 | siya@gmail.com  | D12    | MECH     | 4      |  25000 |  
|    3 | Electronic |    9 |    9 | Roy Fernandes  | Mapusa    |  111111 | roy@gmail.com   | D12    | MECH     | 25     |  10000 |  
+------+------------+------+------+----------------+-----------+---------+-----------------+--------+----------+--------+--------+    
 





-- LEFT OUTER JOIN - Selects the entire left table and also matching columns in right table....
SELECT *
FROM department -- entire table is displayed...
LEFT OUTER JOIN employee -- matching entries from this table are only displayed...
ON department.e_no = employee.e_no;

SELECT *
FROM department -- matching entries from this table are only displayed...
RIGHT OUTER JOIN employee -- entire table is displayed...
ON department.e_no = employee.e_no;





-- SELF JOIN : 
+-----+------+---------+
| id  | name | manager |
+-----+------+---------+
| 101 | A    |     103 |
| 102 | B    |     104 |
| 103 | C    |    NULL |
| 104 | D    |     103 |
+-----+------+---------+
SELECT a.name AS manager, b.name
FROM selfjoinDEMO as a
JOIN selfjoinDEMO as b
ON a.id = b.manager;
+---------+------+
| manager | name |
+---------+------+
| C       | A    |
| D       | B    |
| C       | D    |
+---------+------+

