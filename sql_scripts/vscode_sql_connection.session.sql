-- CREATE DATABASE `exam`;

-- USE exam;

USE hr;

-- SHOW DATABASES;

SHOW TABLES;

-- # loading data from a csv file.. befre it we need to create the table with its schema
-- LOAD DATA INFILE 'Path to the CSV file'
-- INTO TABLE customer
-- FIELDS TERMINATED BY ','
-- IGNORE 1 ROWS;

-- SELECT * from hr.countries;

-- SELECT * from hr.employees;

-- SELECT DISTINCT e.last_name from hr.employees as e ORDER BY e.last_name DESC;

-- SELECT * FROM hr.employees WHERE last_name="King";
-- SELECT * FROM hr.employees where job_id = "AD_PRES";

-- SELECT e.*, m.first_name as "manager_first_name" FROM hr.employees AS e JOIN hr.employees  AS m ON e.manager_id = m.employee_id WHERE e.employee_id = 108;

-- SELECT * FROM hr.employees where salary > 10000;


-- EFFICIENT WAY OF DOING
SET @avg_salary := (SELECT avg(salary) from employees);
select salary, case when salary > @avg_salary then "high salary" else "low_salary" end as "salary_type" from employees;


