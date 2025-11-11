-- getting all workers in the database
SELECT * FROM worker; 

-- getting the average saraly
SELECT AVG(salary)
FROM worker; 

-- formating the salary to two decimals places and a comma 
SELECT FORMAT(AVG(salary),2)
FROM worker
WHERE Workerid <> 1013; 

-- getting the average salary base on an attribute 
SELECT AVG(salary)
FROM worker
WHERE gender = 'F'
AND worker ;

-- getting average salary from male workers
SELECT AVG (salary)
FROM worker
WHERE gender = 'M';

-- counts the total amount of workers
SELECT Count(*) 
FROM worker;

-- join by deptID primary key and group by deptID forigen key
SELECT MAX(salary), deptID_FK, lname, deptName
FROM worker
JOIN Dept 
  ON deptID = deptID_FK
GROUP BY deptID_FK;

-- group by the average salary that is greater than 2000 from worker table
SELECT deptID_FK, AVG(SALARY)
FROM WORKER
GROUP BY DEPTID_FK
  HAVING AVG(SALARY) > 2000;

-- average salary that is greater than 1000 grouped by the deptID foreign key from worker table
SELECT deptID_FK, avg(salary)
FROM WORKER
GROUP BY deptID_FK
  HAVING avg(salary) > 1000;

-- using two joins
SELECT deptID_FK, avg(salary), deptName, branchName
FROM WORKER
JOIN Dept 
  ON dept.deptID = Worker.DeptID_FK
JOIN Branch 
  ON Branch.branchID = Dept.branchID_FK
GROUP BY deptID_FK
  HAVING avg(salary) > 1000;

-- searching for specific last names
SELECT workerID, lname, salary
FROM worker
WHERE lname IN ('KELLY', 'BAKER', 'WARD', 'DENNIS');
