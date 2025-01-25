-- where clause
-- create the database
CREATE DATABASE where_clause;
-- use the database
USE where_clause;

-- Create the table with name city
CREATE TABLE city(ID int primary key, Name varchar(50),
CountryCode varchar(20),District varchar(50),Population numeric(50));

-- Insert the values in table
INSERT INTO city(ID,Name,CountryCode,District,Population)
VALUES
(1,'Kabul','AFG','Kabol',1780000),
(2,'Qandahar','AFG','Qandahar',237500),
(3,'Herat','AFG','Herat',186800),
(4,'Mazar-e-Sharif','AFG','Balkh',127800),
(5,'Amsterdam','NLD','Noord-Holland',731200),
(6,'Rotterdam','NLD','Zuid-Holland',593321),
(7,'Haag','NLD','Zuid-Holland',440900),
(8,'Utrecht','NLD','Utrecht',234323),
(9,'Eindhoven','NLD','Noord-Brabant',201843),
(10,'Tilburg','NLD','Noord-Brabant',193238),
(11,'Groningen','NLD','Groningen',172701),
(12,'Breda','NLD','Noord-Brabant',160398),
 (13,'Apeldoorn','NLD','Gelderland',153491),
(14,'Nijmegen','NLD','Gelderland',152463),
(15,'Enschede','NLD','Overijssel',149544),
(16,'Haarlem','NLD','Noord-Holland',148772),
 (17,'Almere','NLD','Flevoland',142465),
(18,'Arnhem','NLD','Gelderland',138020),
 (19,'Zaanstad','NLD','Noord-Holland',135621),
 (20,'�s-Hertogenbosch','NLD','Noord-Brabant',129170);

-- Print the all values
SELECT * FROM city;

-- Take the data of district AFG
SELECT * FROM city WHERE CountryCode LIKE 'AFG';

-- Take the data of where the popoulaton is graeter than 150000
SELECT * FROM city WHERE Population >150000;