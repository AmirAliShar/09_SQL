-- Create the table with name ORDER

CREATE TABLE Orderby(ID int primary key,First_Name varchar(30),Last_Name varchar(20),
Address varchar(30),Hire_Date date,Salary numeric(20));

INSERT INTO Orderby(ID,First_Name,Last_Name,Address,Hire_Date,Salary)
VALUES
(4,"Ashfique","Ali","CS",'2020-04-12',20000),
(3,"Ghulam ","Akbar","TL",'2021-12-23',35000),
(5,"Awess","Ahmed","SW",'2014-10-28',25000),
(2,"Abdul","Hakeem","EL",'2018-03-18',30000),
(1,"Hussain","Bux","SW",'2019-08-09',400000);

select * from Orderby;

-- Arrange the asceding  by id 
select * from Orderby order by ID asc;

select * from Orderby order by Hire_Date desc;
