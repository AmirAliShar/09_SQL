--  operator
-- create the database
CREATE DATABASE where_clause;
-- use the database
USE where_clause;

-- Create the table with name Employee
CREATE TABLE Employee(ID int primary key,Name varchar(30),Address varchar(30),Salary numeric(20)
);
INSERT INTO Employee()
VALUES
(1,"Ashfique","CS",20000),
(2,"Ghulam Akbar","TL",35000),
(3,"Awess","SW",25000),
(4,"Hakeem ","EL",30000);

-- Print the full table
SELECT * FROM Employee; 

-- Between 
select * from Employee where salary between 30000 and 35000;

-- In and  not in
select * from Employee where ID in (1,4);

select * from Employee where Name in("Ashfique","Hakeem");

-- like
-- Print those rows which is first start with A or a
select * from Employee where Name like "A%";

-- print the those rows which last name end with A
select * from Employee where Name like "%A";

-- Print the thoese rows which contain a or A  at any poosition
select * from Employee where Name like "%A%";

-- Print the thoese rows which contain 2nd last character must be a
select * from Employee where Name like "%A_";

