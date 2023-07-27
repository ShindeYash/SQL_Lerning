# Data Normaliztion and Joins

use companydb;

# Use of Alias

SELECT 
    SUM(salary) AS Total_Salary
FROM
    employee
WHERE
    sex = 'f';
	
    
SELECT 
    AVG(salary) AS Total_Salary
FROM
    employee
WHERE
    sex = 'f';
    
SELECT 
    AVG(salary) AS Average_Salary
FROM
    employee
WHERE
    sex = 'm';
    

SELECT 
    SUM(salary) AS Total_Salary, dno AS Department_Number
FROM
    employee
GROUP BY dno;


# Inner Join

select * from employee;

select * from works_on;

SELECT 
    essn, ssn, sex, address
FROM
    works_on
        INNER JOIN
    employee ON works_on.essn = employee.ssn;
    

select * from department;

SELECT fname, lname, dname
FROM employee
 JOIN department 
ON department.dnumber = employee.dno;

# Cross Join

Select * from department;
select * from project;

select * from project cross join department;

# Inner Join and filtering

select * from employee
inner join department
on employee.dno = department.dnumber and salary > 40000;

select fname, hours, pno
from works_on
inner join employee
on works_on.essn = employee.ssn
where pno > 15;

select * from employee as left_table
inner join employee as right_table
on left_table.super_ssn = right_table.ssn;
