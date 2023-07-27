select * from works_on;
select * from department;
select * from employee;
select * from project;

# Print Details of employees who are working on a project

SELECT 
    fname, lname, ssn
FROM
    employee
WHERE
    ssn IN (SELECT DISTINCT
            essn
        FROM
            works_on);

# Print all employees who are earning more tean the average salary




# Print Details of all the Managers from the employee table

select * from employee;
select * from department;

SELECT 
    fname, lname, ssn
FROM
    employee
WHERE
    ssn IN (SELECT DISTINCT
            super_ssn
        FROM
            employee
        WHERE
            super_ssn IS NOT NULL);

--  Completed


# Print details of employees who are working on a project

select * from works_on;
select * from project;
select * from employee;

SELECT 
    fname, lname, ssn
FROM
    employee
WHERE
    ssn IN (SELECT DISTINCT
            essn
        FROM
            works_on);
            
-- Completed


# Print max and min avg salaries across all departments

select * from employee;

SELECT 
    MIN(Avg_Salary), MAX(Avg_Salary)
FROM
    (SELECT 
        dno, AVG(salary) AS Avg_Salary
    FROM
        employee
    GROUP BY dno) AS dept_avg;
    
-- Completed

# Print all employees who are earning more than the avg salary across all employees

SELECT 
    fname, lname, salary
FROM
    employee
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employee);

# Print Name, deparment and total hours that each has worked

select * from works_on;
select * from department;
select * from employee;

with total_hours as ( select essn, sum(hours) as sum_hour from works_on group by essn)
select fname, ssn, essn, sum_hour from employee inner join total_hours on total_hours.essn = employee.ssn;

-- Completed





