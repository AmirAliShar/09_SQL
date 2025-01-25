-- create the database
CREATE DATABASE First_table;
-- use the database
USE First_table;

-- Create the table with name table_f
CREATE TABLE table_f(ID int primary key, Name varchar(20),Age numeric(5),DateOFBirth date);

-- Insert the values in table
INSERT INTO table_f(ID,Name,Age,DateOFBirth)
VALUES
(1,"Amir Ali",19,'2005-01-01'),
(2,"Ali",20,'2004-04-12'),
(3,"Ahmed",23,'2001-02-25');

-- Print the all values
SELECT * FROM table_f;