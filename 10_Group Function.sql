CREATE DATABASE SQLL;
USE SQLL;
CREATE Table GF(
EMPNO int primary key,
DEPTNO numeric(5),
ENAME varchar(20),
JOB varchar(20),
MGR varchar(30),
HIRDATE datetime,
SAL numeric(10),
COMM numeric(20),
GRADE VARCHAR(5),
ROLLNUM numeric(5),
MARKS numeric(5),
CITY VARCHAR(50)
);

INSERT INTO GF()
VALUES
(11,10,"Ghani","Analyst","7782",'1981-02-10',900,1000,"A",12,90,"kHAIRPUR"),
(12,20,"Nizakit","Clerk","7742",'1981-05-20',1500,5000,"A+",17,92,"DADU"),
(13,30,"Hakim","Data sciencentist","8875",'1981-05-01',3000,1200,"B",19,45,"HYDERABAD"),
(14,30,"SALLEH","Clerk","7834",'1980-12-05',15000,12000,"B+",46,80,"SUKKUR"),
(15,15,"Ghazanfar","Analyst","1112",'1970-11-09',1600,13000,"B",43,78,"LARAKANA");

SELECT * FROM GF;
-- Take the max ,min avg and sum of salary where commenction greater than 1200
SELECT AVG(SAL), MAX(SAL),MIN(SAL),SUM(SAL) FROM GF WHERE  COMM > 1200;

SELECT ENAME,CITY ,MAX(MARKS) FROM GF GROUP BY CITY;


-- Get min and max hire date
SELECT MIN(HIRDATE),MAX(HIRDATE) FROM GF;


-- Get the number of rows from table
SELECT COUNT(*) FROM GF  WHERE JOB ='Analyst';

SELECT ENAME, COUNT(COMM) FROM GF  WHERE COMM <1200;


SELECT DEPTNO, COUNT(DEPTNO) FROM GF GROUP BY DEPTNO;


-- NVL FUNCTION 
-- It forces the group function to include the null values
SELECT CITY , AVG(SAL) FROM GF GROUP BY CITY; 

SELECT AVG(NVL(SAL,0)) FROM GF; 

-- HAVING CLAUSE

SELECT COUNT(ENAME),MARKS ,CITY FROM GF GROUP BY CITY HAVING MAX(MARKS) >= 90;

SELECT * FROM GF WHERE MARKS >70 GROUP BY CITY HAVING ROLLNUM >11 ORDER BY ROLLNUM ASC;

-- Pratice Questoin
-- 1.	List out the department numbers that have at least 4 employees.
SELECT DEPTNO ,COUNT(DEPTNO) AS ATLEAST_EMPLOYEE 
FROM EMP GROUP BY DEPTNO HAVING  COUNT(ENAME) >=4 ;

-- 2.	Display the number of employees in each department.
SELECT DEPTNO,COUNT(ENAME) FROM EMP GROUP BY DEPTNO ;

-- 3.	Display the manager no and the salary of 
-- the lowest-paid employee for that manager. Exclude anyone whose manager is not known.
-- Exclude any groups where the minimum salary 
 -- is less than 1000. Sort the output in descending order of salary.
 
 SELECT MGR ,MIN(SAL) AS LOWEST_SAL FROM EMP
 WHERE  MGR IS NOT NULL 
 GROUP BY MGR
 HAVING MIN(SAL) >= 1000
 ORDER BY LOWEST_SAL DESC;
 
 
 -- 4.	Find the most recently hired employee in each department.
 SELECT ENAME,MAX(HIREDATE) AS RECENTLY_HIRE,DEPTNO FROM EMP GROUP BY DEPTNO;
 
 SELECT EMP.ENAME, EMP.HIREDATE, EMP.DEPTNO
FROM EMP
WHERE HIREDATE = (SELECT MAX(HIREDATE) FROM EMP E WHERE E.DEPTNO = EMP.DEPTNO);


-- 5.	List the highest salary paid for each job.
SELECT ENAME,MAX(SAL) AS MAX_SAL,JOB FROM EMP GROUP BY JOB;

-- 6.	Display the department number, number of employees in that dept
 -- and the average salary for all employees in that department. 
 -- Round the average salary to two decimal places.
 
 SELECT DEPTNO ,COUNT(EMPNO),AVG(round(SAL,2)) FROM EMP GROUP BY DEPTNO ;
 
 --  7.	Write a query that will display the difference
 -- between the highest and lowest salaries. Label the column DIFFERENCE.
 
 SELECT MAX(SAL) - MIN(SAL) AS DIFFERECNCE FROM EMP;
 
 -- 8.	Display the number of employees with the same job
 SELECT JOB, COUNT(EMPNO)AS NO_OF_EMP FROM EMP GROUP BY JOB;
 
 -- 9 Determine the number of managers without listing them. (Hint: Use MGR column)
 
 SELECT COUNT(DISTINCT(MGR)) FROM EMP WHERE MGR IS NOT NULL;
 
 -- 10.	Display the job title and total monthly salary for each job title with a total payroll 
 -- exceeding 5000. Exclude salespeople and sort the list by the total monthly salary.
 
 SELECT JOB AS TOTAL_PAYROLL,SUM(SAL) FROM EMP
 WHERE JOB != 'SALESMAN'
 GROUP BY JOB
 HAVING SUM(SAL) >5000
 ORDER BY TOTAL_PAYROLL DESC;

 SELECT * FROM EMP;
 


