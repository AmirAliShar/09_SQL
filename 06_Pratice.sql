Create Table EMP(
EMPNO int primary key,
DEPTNO numeric(5),
ENAME varchar(20),
JOB varchar(20),
MGR varchar(30),
HIRDATE datetime,
SAL numeric(10),
COMM numeric(20));

insert INTO EMP()
value
(11,10,"Ghani","Analyst","7782",'1981-02-10',900,1000),
(12,20,"Nizakit","Clerk","7742",'1981-05-20',1500,5000),
(13,30,"Hakim","Data sciencentist","8875",'1981-05-01',3000,1200),
(14,30,"SALLEH","Clerk","7834",'1980-12-05',15000,12000),
(15,15,"Ghazanfar","Analyst","1112",'1970-11-09',1600,13000);

-- 1 Create a query to display unique departments from EMP table. 
SELECT distinct DEPTNO  FROM EMP;

-- 2 Display the employee’s name, job, and joining date of employees
--  hired between February 20, 1981, and May 1, 1981. Order the query in ascending order by joining date. 

SELECT ENAME,JOB,HIRDATE FROM EMP WHERE HIRDATE BETWEEN '1981-02-20' AND '1981-05-01' order by HIRDATE asc;

-- 3 Display the names of all employees who have two ‘L’ in their name and are in department 30 or their manager is 7782. 
SELECT ENAME,DEPTNO FROM EMP WHERE ENAME LIKE '%L%L%' AND DEPTNO = 30  OR MGR=7782;

-- 4 Display the name, salary, and commission for all employees whose commission amount is greater than their salary increased by 10%. 

SELECT ENAME,SAL,COMM FROM EMP WHERE COMM > SAL +(SAL*0.1);

-- 5 Display the name and salary of employees who earn more than 1500 and are in department 10 or 30.
-- Label the columns Employee and Monthly Salary, respectively. 

SELECT ENAME AS "EMPLOYEE",SAL AS"Monthly Salary",DEPTNO FROM EMP WHERE SAL > 1500 AND (DEPTNO =10 OR DEPTNO =30);

-- 6 List out the employees whose name start with S and ends with H. 
SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%H';

-- 7 Write a query that produces following for each employee: 
-- <employee name> earns <salary> monthly but wants <3 times salary>. Label the column Dream Salaries. 
SELECT ENAME ||'earns'|| SAL ||'monthly but wants'|| (3*SAL)  AS 'Dream Salaries'  FROM EMP; -- THIS NOT WORK ON MYSQL WORKBENCH BUT CODE IT CORRECT
select concat(Ename,Job) FROM EMP;

-- 8 Display the name job and salary for all employees 
-- whose job is clerk or analyst, and their salary is not equal to 1000, 3000, or 5000. 
SELECT ENAME,JOB,SAL FROM EMP WHERE JOB IN ('Clerk', 'analyst') 
AND (SAL <> 1000 AND SAL <> 3000 AND SAL<>5000);

-- 9 Display the names of all employees where the third letter of their name is an A.
SELECT ENAME FROM EMP WHERE ENAME LIKE '__A%';

-- 10 Display name, salary and commission for all employees
-- who earn commission. Sort the result in descending order of salary and commission. 
SELECT ENAME,SAL,COMM FROM EMP  WHERE COMM IS NOT NULL order by SAL desc ,COMM desc; 

