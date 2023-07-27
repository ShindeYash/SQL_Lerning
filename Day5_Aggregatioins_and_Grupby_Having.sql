# count function

use companydb;

select * from employee;

select count(*) from employee;

SELECT 
    (COUNT(*) - COUNT(super_ssn)) AS Count_Null_Super_SSN
FROM
    employee;

SELECT 
    *
FROM
    employee
WHERE
    super_ssn IS NULL;

SELECT 
    SUM(salary)
FROM
    employee;

SELECT 
    SUM(salary)
FROM
    employee
WHERE
    sex = 'f';

SELECT 
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary,
    AVG(salary) AS avg_salary
FROM
    employee
WHERE
    sex = 'm';
    
# Group By Commands

SELECT 
    dno, AVG(salary) AS avg_salary
FROM
    employee
GROUP BY dno;

select * from employee;
select * from works_on;

SELECT 
    essn, SUM(hours) AS total_work
FROM
    works_on
GROUP BY essn;

select * from department;

SELECT 
    *
FROM
    employee;

SELECT 
    dno, AVG(salary) AS AVG_SALary
FROM
    employee
WHERE
    sex = 'M'
GROUP BY dno;


# SELECT ->  FROM -> WHERE -> GROUP BY -> ORDER BY

SELECT 
    dno, sex, AVG(salary) AS avg_salary
FROM
    employee
WHERE
    sex = 'M'
GROUP BY dno
ORDER BY avg_salary DESC;

# Calculate avg salary for each department and gender

SELECT 
    dno, sex, AVG(salary)
FROM
    employee
GROUP BY dno , sex;

SELECT 
    dno, sex, AVG(salary)
FROM
    employee
WHERE
    dno = 5 AND sex = 'M';
    
# Print all the unique manager ids

SELECT 
    DISTINCT super_ssn
FROM
    employee;
    
SELECT 
    count(DISTINCT super_ssn)
FROM
    employee;
    
# FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY

select dno, avg(salary) as avg_salary
from employee
group by dno
having avg_salary > 32000;
