--  operator
-- create the database
CREATE DATABASE where_clause;
-- use the database
USE where_clause;

-- Create the table with name city
CREATE TABLE Operator(ID int primary key, Name varchar(50),
CountryCode varchar(20),District varchar(50),Population numeric(50),Aver_Age numeric(3));

-- Insert the values in table
INSERT INTO Operator(ID,Name,CountryCode,District,Aver_Age,Population)
VALUES
(1,'Kabul','AFG','Kabol',78,1780000),
(2,'Qandahar','AFG','Qandahar',88,237500),
(3,'Herat','AFG','Herat',98,186800),
(4,'Mazar-e-Sharif','AFG','Balkh',88,127800),
(5,'Amsterdam','NLD','Noord-Holland',98,731200),
(6,'Pakistan','PK','Karachi',66,593321),
(7,'Haag','NLD','Zuid-Holland',66,440900),
(8,'Utrecht','NLD','Utrecht',77,234323),
(9,'Eindhoven','NLD','Noord-Brabant',67,201843),
(10,'Tilburg','NLD','Noord-Brabant',98,193238),
(11,'Pakistan','PK','Multan',100,172701),
(12,'Breda','NLD','Noord-Brabant',89,160398),
 (13,'Apeldoorn','NLD','Gelderland',67,153491),
(14,'Pakistan','PK','Sukkur',79,152463),
(15,'Enschede','NLD','Overijssel',67,149544),
(16,'India','IND','New dehli',55,148772),
 (17,'Almere','NLD','Flevoland',66,142465),
(18,'Arnhem','NLD','Gelderland',88,138020),
 (19,'Zaanstad','NLD','Noord-Holland',77,135621),
 (20,'Pakistan','PK','Khairpur',87,129170);

-- Print the all values
SELECT * FROM Operator;

-- Comparision Operator
-- Take the average Age  data where average age is greater than 80
SELECT * FROM Operator WHERE  Aver_Age >80;

-- Take the average Age  data where average age is less than or equal to 77
SELECT * FROM Operator WHERE  Aver_Age <=77;

-- Take the average Age  data where average age is equal to 77
SELECT * FROM Operator WHERE  Aver_Age =77;

-- Take the average Age  data where average age is not equal to 77
SELECT * FROM Operator WHERE  Aver_Age <> 77;

-- AND & OR operator
-- Take the average Age  data where average age is Greater than   70 and less than   to 90
SELECT * FROM Operator WHERE  Aver_Age >70 AND Aver_Age < 90;

SELECT * fROM Operator WHERE CountryCode ='PK' OR District = 'Khairpur';
