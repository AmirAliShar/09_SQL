CREATE TABLE TABLEA(
ID INT PRIMARY KEY,
NAME VARCHAR (30));

INSERT INTO TABLEA()
VALUES
(57,"Amir Ali"),
(17,"Nizakat Ali"),
(35,"Imran Ali");

CREATE TABLE TABLEB(
ID INT PRIMARY KEY,
COURSE VARCHAR(50)
);

INSERT INTO TABLEB()
VALUES
(57,"English"),
(17,"CS"),
(12,"PHP"),
(35,"HTML");

SELECT * FROM TABLEB;

-- INNER JOIN

SELECT * FROM TABLEA INNER JOIN TABLEB  ON TABLEA.ID = TABLEB.ID;

-- use of alias  --> short name of tables

SELECT * FROM TABLEA AS A INNER JOIN TABLEB AS B ON A.ID = B.ID;

-- LEFT JOIN 

SELECT * FROM TABLEA AS A LEFT JOIN TABLEB AS B ON A.ID = B.ID;

-- RIGHT JOIN
SELECT * FROM TABLEA AS A RIGHT JOIN TABLEB AS B ON A.ID = B.ID;

-- FULL JOIN

SELECT * FROM TABLEA AS A LEFT JOIN TABLEB AS B ON A.ID = B.ID 
UNION 
SELECT * FROM TABLEA AS A RIGHT JOIN TABLEB AS B ON A.ID = B.ID;

-- LEFT EXCLUSIVE JOIN
SELECT * FROM TABLEA AS A LEFT JOIN TABLEB AS B ON A.ID= B.ID WHERE B.ID IS NULL;

-- RIGHT EXCUSIVE JOIN 
SELECT * FROM TABLEA AS A RIGHT JOIN TABLEB AS B ON A.ID= B.ID WHERE A.ID IS NULL;

-- FULL EXCLUSIVE JOIN
SELECT * FROM TABLEA AS A LEFT JOIN TABLEB AS B ON A.ID= B.ID WHERE B.ID IS NULL
UNION
SELECT * FROM TABLEA AS A RIGHT JOIN TABLEB AS B ON A.ID= B.ID WHERE A.ID IS NULL;

-- SLEF JOIN

--  union operator
SELECT * FROM TABLEA 
UNION 
SELECT * FROM TABLEB;

-- Pratice Questions
-- 1.	List the name of the employees with the name of their immediate higher authority.
SELECT ENAME ,DNAME FROM EMP E, DEPT D
WHERE E.DEPTNO= D.DEPTNO; 

SELECT ENAME ,DNAME FROM EMP E INNER JOIN DEPT D ON E.DEPTNO=D.DEPTNO;

-- Both gave the same result

-- 2.	Create a unique listing of all jobs that are in department 30.
-- Include the location of department 30 in the output.
SELECT DISTINCT E.JOB ,D.LOC,DEPTNO
 FROM EMP E
 JOIN DEPT D 
 ON E.DEPTNO =D.DEPTNO
 WHERE E.DEPTNO =30 ;
 
 
 -- 3.	Display the employee name and department name for all employees who have an A in their name
 SELECT E.ENAME, D.DNAME FROM EMP E
 JOIN DEPT D ON E.DEPTNO=D.DEPTNO
 WHERE E.ENAME LIKE '%A%';
 
-- 4.	Display the employee name and department name for all employees who work in DALLAS.

SELECT ENAME ,DNAME ,LOC FROM EMP E JOIN DEPT D ON E.DEPTNO= E.DEPTNO
WHERE D.LOC='DALLAS';


-- 5.	Display the employee name employee number
--  along with their manager name and manager’s number
-- for all employees including KING, who has no manager.
-- Label the columns employee, Emp#, Manager, and Mgr#, respectively.

SELECT ENAME AS EMPLOYEE ,EMPNO AS 'EMP#', JOB AS MANAGER ,MGR AS 'MGR#' 
FROM EMP E LEFT JOIN EMP E2 
ON E2.MGR=E.EMPNO ;

-- 6.	Create a query that will display the name, job, department name, salary, grade for all employees.

SELECT ENAME ,JOB ,DEPTNO,SAL FROM EMP E JOIN DEPT D ON E.DEPTNO= D.DEPTNO;

SELECT ENAME ,JOB ,DEPTNO,SAL FROM EMP E , DEPT D WHERE  E.DEPTNO= D.DEPTNO;

-- 7.	Create a query to display the name and hire date of any employee hired after employee BLAKE.
SELECT ENAME , HIREDATE FROM EMP 
  WHERE HIREDATE > (SELECT HIREDATE FROM EMP WHERE ENAME ='BLAKE'); 
  
  -- 8.	Display all employees’ names and hire dates along with 
  -- their manager’s name and hire date for all employees who were hired before their managers.
  -- Label the columns Employee, Emp Hiredate, Manager, and Mgr Hiredate, respectively.
  
  SELECT 
    e.ename AS Employee, 
    e.hiredate AS "Emp Hiredate", 
    m.ename AS Manager, 
    m.hiredate AS "Mgr Hiredate"
FROM 
    emp e
JOIN 
    emp m ON e.mgr = m.empno
WHERE 
    e.hiredate < m.hiredate;


  

  
SELECT * FROM EMP;

SELECT * FROM DEPT;