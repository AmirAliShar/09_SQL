CREATE TABLE AT(ID int primary key,
First_Name varchar(30),
Last_Name varchar(20),
Address varchar(30),
Hire_Date date,
Salary numeric(20));

INSERT INTO AT(ID,First_Name,Last_Name,Address,Hire_Date,Salary)
VALUES
(4,"Ashfique","Ali","CS",'2020-04-12',20000),
(3,"Ghulam ","Akbar","TL",'2021-12-23',35000),
(5,"Awess","Ahmed","SW",'2014-10-28',25000),
(2,"Abdul","Hakeem","EL",'2018-03-18',30000),
(1,"Hussain","Bux","SW",'2019-08-09',400000);

-- Print the values before update
SELECT * FROM AT;

-- insert the values in the tables
insert INTO AT value(6,"Ghazanfar","Ali","SW","2024-12-19",5000000);
insert INTO AT value(8,"Amir","Ali","CS","2024-12-16",5000000);
SELECT * FROM AT;

-- Insert the values in the specific column
insert INTO AT (ID,First_Name,Last_Name,Address)
values(9,"Muhammad","khan","SW");
SELECT * FROM AT;

-- update the table any values
-- Option 1: Disable Safe Update Mode Temporarily
SET SQL_SAFE_UPDATES = 0;

UPDATE AT set Address = "CSE" where Address="CS";

-- Delete the any rows permament
DELETE FROM AT WHERE Salary < 35000;


select * from AT;