-- Working with round function
select round(23.34434,2) ,round(23.454,1),round(12.343,0) ,round(12.3437,-1) from dual;

select truncate(43.35784,2),truncate(43.2378,0),truncate(45.3435,-1) from dual;

select mod(2001,4) from dual ; -- It gave the reminder of function

# working with data function
Create Table Dates(
EMPNO int primary key,
DEPTNO numeric(5),
ENAME varchar(20),
JOB varchar(20),
MGR varchar(30),
HIRDATE datetime,
SAL numeric(10),
COMM numeric(20));

insert INTO Dates()
value
(11,10,"Ghani","Analyst","7782",'1981-02-10',900,1000),
(12,20,"Nizakit","Clerk","7742",'1981-05-20',1500,5000),
(13,30,"Hakim","Data sciencentist","8875",'1981-05-01',3000,1200),
(14,30,"SALLEH","Clerk","7834",'1980-12-05',15000,12000),
(15,15,"Ghazanfar","Analyst","1112",'1970-11-09',1600,13000);

SELECT ENAME ,HIRDATE FROM Dates WHERE JOB ='Analyst';

-- SYSDATE

-- PRINT THE CURRENT DATE
SELECT sysdate() FROM DUAL; 

SELECT (SYSDATE-HIRDATE) FROM Dates;
select * from Dates;


SELECT ENAME,
TO_CHAR(HIRDATE, 'fmDD Month YYYY')
AS HIREDATE
FROM Dates;