SELECT * FROM EMP;

-- 1.	Create a view called emp_vu based on the employee number, employee name, 
-- and department number from the EMP table.
-- Change the heading for the employee name to EMPLOYEE.
CREATE VIEW EMP_VU AS 
SELECT ENAME AS EMPLOYEE ,EMPNO,DEPTNO 
FROM EMP ;
-- 2.	Display the contents of the EMP_VU view.
SELECT * FROM EMP_VU;

-- 3.Select the view name and text from the data dictionary USER_views.
