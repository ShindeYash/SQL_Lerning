use companydb;

SELECT 
    fname, lname
FROM
    employee;
    
SELECT 
    fname, lname, sex
FROM
    employee
WHERE
    sex = 'm';
    
SELECT 
    fname
FROM
    employee
WHERE
    fname LIKE 'a%' OR fname LIKE 'j%'
        OR fname LIKE 'i%';

SELECT 
    fname, lname, sex, dno
FROM
    employee
WHERE
    sex = 'm' AND dno = 5;

SELECT 
    fname, lname, sex, dno
FROM
    employee
WHERE
    sex = 'm' OR dno = 5;
    
SELECT 
    *
FROM
    employee
WHERE
    salary >= 25000 AND sex <> 'M';
    
SELECT 
    *
FROM
    employee;
    
SELECT 
    *
FROM
    employee
WHERE
    fname LIKE '__m%';
    
SELECT 
    fname, address
FROM
    employee
WHERE
    address LIKE '%houston%';
    
SELECT 
    fname, ssn, salary
FROM
    employee
WHERE
    salary BETWEEN 20000 AND 45000;
    
select * from project;

SELECT 
    pname, plocation
FROM
    project
WHERE
    plocation = 'Bellaire'
        OR plocation = 'Stafford'
        OR plocation = 'houston';
	
SELECT 
    pname, plocation
FROM
    project
WHERE
    plocation NOT IN ('Bellaire' , 'Stafford', 'Houston');
        
SELECT 
    fname, ssn
FROM
    employee;
    
select * from employee;

SELECT 
    fname, ssn, super_ssn
FROM
    employee
WHERE
    super_ssn IS NOT NULL;
    
SELECT 
    fname, salary
FROM
    employee
ORDER BY salary DESC;

SELECT 
    fname, salary, sex
FROM
    employee
WHERE
    sex = 'M'
ORDER BY salary DESC;

# update Query
SET sql_safe_updates = 0;


# Failed to execute following two commands because of
UPDATE employee 
SET 
    super_ssn = "333445"
WHERE
    super_ssn IS NULL;
    
DELETE FROM employee 
WHERE
    super_ssn = '333445555';

