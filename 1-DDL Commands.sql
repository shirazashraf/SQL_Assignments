-- Commands to create database
CREATE DATABASE school;

-- Commands to use the data base
USE School;

-- Commands to create the table
CREATE TABLE Student(Roll_no INT PRIMARY KEY, Stud_name VARCHAR(30), Marks INT, Grade VARCHAR(30));

-- DESC shows the details inside the table
DESC Student;

-- Alter is used to add a new column inside the already created table
ALTER TABLE Student add Division varchar(20);

-- DROP COLUMN is used to delete a column from existing table
ALTER TABLE Student DROP COLUMN Division;

-- Renaming the table name
RENAME TABLE Student TO Student_Details;

-- created the second table in same database
CREATE TABLE Student_Contact_Details(Phone_no INT PRIMARY KEY, Email_id VARCHAR(30));

-- Modified the data type in one of the column
ALTER TABLE Student_Contact_Details MODIFY COLUMN Phone_no varchar(20);

-- Added row details to Student_Contact_Details table
INSERT INTO Student_Contact_Details VALUES( 9051647607, "shiraz@gmail.com");
INSERT INTO Student_Contact_Details VALUES( 9895036838, "john.pk@gmail.com");
INSERT INTO Student_Contact_Details VALUES( 9994794749, "aswin.basker@gmail.com");
INSERT INTO Student_Contact_Details VALUES( 9995284602, "deeraj.madav@gmail.com");

-- Select command is used to fetch the details of the table
SELECT * FROM Student_Contact_Details;

-- truncate is used to removed all the rows in oneshot
TRUNCATE TABLE Student_Contact_Details;

-- drop command is used to delete table
DROP TABLE Student_Contact_Details;

INSERT INTO Student_Details VALUES(1,"Shiraz",94,"8th");
INSERT INTO Student_Details VALUES(2,"Ravi",76,"10th");
INSERT INTO Student_Details VALUES(3,"Sona",35,"9th");
INSERT INTO Student_Details VALUES(4,"Siraj",90,"10th");
INSERT INTO Student_Details VALUES(5,"Sandy",40,"6th");

-- Assignment Question --

-- (1) Use the select command to display the table. 
SELECT * FROM Student_details;

-- (2) Add a column named Contact to the STUDENT table.
ALTER TABLE Student_details add Contact varchar(20);

-- (3) Remove the Grade column from the Student table. 
ALTER TABLE Student_details DROP COLUMN Grade;

-- (4) Rename the table to CLASSTEN. 
RENAME TABLE Student_Details TO CLASSTEN;

-- (5) Delete all rows from the table.
TRUNCATE TABLE Student_Details;

-- (6) Remove the table from the database.
DROP TABLE Student_details;