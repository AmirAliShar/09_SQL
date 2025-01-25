-- single row function

Create Table Single_row_function(
EMPNO int primary key,
DEPTNO numeric(5),
ENAME varchar(20),
JOB varchar(20),
MGR varchar(30),
HIRDATE datetime,
SAL numeric(10),
COMM numeric(20));

insert INTO Single_row_function()
value
(11,10,"Ghani","Analyst","7782",'1981-02-10',900,1000),
(12,20,"Nizakit","Clerk","7742",'1981-05-20',1500,5000),
(13,30,"Hakim","Data sciencentist","8875",'1981-05-01',3000,1200),
(14,30,"SALLEH","Clerk","7834",'1980-12-05',15000,12000),
(15,15,"Ghazanfar","Analyst","1112",'1970-11-09',1600,13000);
select * from Single_row_function;

-- 1 uppercase
SELECT upper(ENAME) FROM Single_row_function;

-- 2 lowecase
SELECT LOWER(ENAME) FROM Single_row_function;

-- Character manuplating function
-- 3 concatenation
SELECT CONCAT(ENAME,JOB) FROM Single_row_function;
select * from Single_row_function;

-- 4 substr
SELECT SUBSTR(ENAME,1,4) FROM Single_row_function;

-- 5 length
SELECT ENAME, LENGTH(ENAME) FROM Single_row_function;

-- 6 CHECK THE POSITION OF CHARACTER
SELECT ENAME, INSTR(ENAME,"A") FROM Single_row_function; 

-- 7 LPAD and RPAD
SELECT LPAD(SAL,5,"*") FROM Single_row_function;

SELECT RPAD(SAL,5,"*") FROM Single_row_function;

-- 8 TRIM
SELECT TRIM("A" FROM "ENAME") FROM Single_row_function; -- not working in mysql it may work on online compiler

SELECT DEPTNO,LENGTH(ENAME),LENGTH(JOB),UPPER(ENAME),LOWER(JOB),LPAD(SAL,6,'*') FROM Single_row_function ORDER BY SAL;
select * from Single_row_function;

