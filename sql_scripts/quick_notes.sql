

-- ROW NUMBER
-- FOR ROW_NUMBER() OVER (ORDER BY ---) is mandatory

-- find me the 5th highest salary
select salary, first_name from (select first_name, salary, row_number() over (order by salary desc) as rownum from employees) as temp where temp.rownum = 5;


-- rank employees by their salaries
select first_name, salary, rank() over (order by salary desc) as rank_number from employees;  -- skips ranks if repeated. 
select first_name, salary, dense_rank() over (order by salary desc) as rank_number from employees; -- takes next number after same salaries don't skipp all those ranks


-- row number and parittion by together 
select first_name, salary, department_id, row_number() over (partition by department_id order by salary desc) as rownum from employees;

-- 5th position based on salary in each deparementment
select * from (select first_name, salary, department_id, row_number() over (partition by department_id order by salary desc) as rownum from employees) as temp where temp.rownum = 5;


