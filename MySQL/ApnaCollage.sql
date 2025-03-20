SHOW DATABASES; #show all databases 
CREATE DATABASE college; # createdatabase 
CREATE DATABASE IF NOT EXISTS college; # create database if Not exists

DROP DATABASE pets; # delete database
DROP DATABASE IF EXISTS pets;  # delete database if exists

USE college; # use selected database

CREATE TABLE student (
    roll INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
); # set schema in current table 

SHOW TABLES; # show All tables from current databse 
DESCRIBE student;

DROP TABLE student; # Delete selected table 

INSERT INTO student ( roll, name, age) VALUES 
  ( '9', 'Abhishekh', '22' ),
  ( '5', 'Roushan', '23' ),
  ( '7', 'Vikash', '21' ),
  ( '2', 'Ankit', '22' );
  
  SELECT * FROM student; # show all data from current table 
  
  INSERT INTO student VALUES(6, 'Kartik', 24); #Insert single set of values in table 
  
  SELECT name, roll FROM student WHERE age>23; # show selected data from table 
  
  
  # *********************************************************************************
  #Practice Q.No:1 
  #Qs:-> Create a database for your company name xyz.
  #step1: create a table inside the DB to store employee info (id, name and salary).
  #step2: Add followig information in the DB:
  #       1, 'adam', 25000
  #		  2, 'bob', 30000
  #		  3, 'casey', 40000 
  #step3: select & view all your table data. 
  
  #SOlution:->
  CREATE DATABASE IF NOT EXISTS technologyfire; # create database if Not exists
  USE technologyFire;
  
  CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT NOT NULL
);
SHOW TABLES;
DESCRIBE employee;

INSERT INTO employee(id, name, salary) VALUES
(1, 'adam', 25000),
(2, 'bob', 30000),
(3, 'casy', 40000);

SELECT * FROM employee;
#********************************************************************************

# Create school database and create student table and set data 
CREATE DATABASE school;
USE school;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR (20)
);

SHOW TABLES;
DESCRIBE student;

INSERT INTO student(rollno, name, marks, grade, city) VALUES
(101, 'anil', 78, 'c', 'Pune'),
(102, 'bhumika', 93, 'A', 'Mumbai'),
(103, 'chetan', 85, 'B', 'Mumbai'),
(104, 'dhruv', 96, 'A', 'Delhi'),
(105, 'emanuel', 12, 'F', 'Delhi'),
(106, 'farah', 82, 'b', 'Delhi');

SELECT * FROM student;
SELECT DISTINCT city FROM student;
SELECT grade,city, marks FROM student;
SELECT * FROM student WHERE marks>=80;
SELECT * FROM student WHERE city='Mumbai';
SELECT * FROM student WHERE (marks<80 OR city!='Delhi');
 
#Between clause (Select for a given range) 
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

#IN clause (matches any values in the list)
 SELECT * FROM student WHERE city IN ('Delhi', 'Mumbai');
 
#Not IN clause (to negate the given condition)
 SELECT * FROM student WHERE city NOT IN ('Delhi', 'Mumbai');
 
# Order By clause (tO short data in ascending (ASC) or descending(DESC) order) 
 SELECT * FROM student ORDER BY marks ASC; #Show Lowest marks of student on top
 SELECT * FROM student ORDER BY marks DESC; #Show Highest marks of student on top
 
 #Orde By clause with Limit clause  
 SELECT * FROM student ORDER BY marks DESC LIMIT 3; #Show Only Top 3 Highest marks of student

#Aggreate functions  
 SELECT COUNT(marks) FROM student; #find Total Number of student
 SELECT MAX(marks) FROM student; #find Maximum Marks of student 
 SELECT MIN(marks) FROM student; #find Minimum Marks of student 
 SELECT AVG(marks) FROM student; #find Average Marks of student 
 SELECT SUM(marks) FROM student; #Additon of total marks of student
 
# Group By clause
 SELECT city, MIN(marks), COUNT(name) FROM student GROUP BY city; #show Minimum marks of student by city and count of student
 
 
# *********************************************************************************
  #Practice Q.No:2 
  #Qs:-> Write the query to find AVG marks in each city in ascending order.
  #SOlution:->
  SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks) ASC; 
  
  
# *********************************************************************************
  #Practice Q.No:3 
  #Qs:-> For the given table, find the total payment according to each payment methos.
  #SOlution:->
  CREATE TABLE courseuser(
  customer_id INT PRIMARY KEY,
  customer VARCHAR(50),
  mode VARCHAR(20),
  city VARCHAR(20)
  );
  
  INSERT INTO courseuser(customer_id, customer, mode, city) VALUES
  (101, 'Olivia Barrett', 'Netbanking', 'Portland'),
  (102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
  (103, 'maya hernandez', 'Credit Card', 'Seattle'),
  (104, 'Liam Donovan', 'Netbanking', 'Denver'),
  (105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
  (106, 'caleb Foster', 'Debit card', 'Minneapolis'),
  (107, 'Ava Patel', 'Debit card', 'Phoenix'),
  (108, 'Lucas Carter', 'Netbanking', 'boston'),
  (109, 'Isabella Martinez', 'netbanking', 'Nashville'),
  (110, 'Jackson Brooks', 'Credit Card', 'Boston');
  
   SELECT mode, COUNT(customer) FROM courseuser GROUP BY mode;
  # *********************************************************************************
  
  
  #Having clause
  SELECT COUNT(name), city FROM student GROUP BY city HAVING MAX(marks) > 90;
  
  SELECT city, marks FROM student WHERE grade='f' GROUP BY city, marks HAVING MAX(marks) ORDER BY MAX(marks);
  
  
#*************************************************************************************  
# UPDATE Query (to update existing rows)

SET SQL_SAFE_UPDATES = 0; # set 0 for safe mode (OFF) for updating rows data 
SET SQL_SAFE_UPDATES = 1; # set 1 for safe mode (ON) for not change unnessesery changes

UPDATE student SET grade='O' WHERE grade='A'; #change grade O where grade is A
UPDATE student SET marks= marks+5 WHERE grade='F'; #update marks Add 5 marks where grade is F
UPDATE student SET marks= 24 WHERE rollno =105; #update marks from existing marks to 82 where rollno 105 
UPDATE student SET marks= marks+1; #update marks of all students increase 1
SELECT * FROM student;

#*************************************************************************************  
# DELETE Query (to delete existing rows)

DELETE FROM student WHERE marks<33; # Delete marks where marks less then 33
DELETE FROM student; # Delete all data of existing table


#*************************************************************************************
# Forign Key
SHOW DATABASES;
CREATE DATABASE  IF NOT EXISTS university;
USE university;

CREATE TABLE course(
 id INT PRIMARY KEY,
 name VARCHAR(50)
);

SHOW TABLES;

INSERT INTO course(id, name) VALUES
(101, 'science'),
(102, 'english'),
(103, 'hindi');

SELECT * FROM course;
UPDATE course SET name= UCASE(name);
UPDATE course SET id=104 WHERE name='hindi'; #UPDATE course id 103 to 104 where course Name is Hindi

#define forign key dept_id
CREATE TABLE teacher(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 dept_id INT,
 FOREIGN KEY (dept_id) REFERENCES course(id) # Reference course id as a forign key in teacher table 
 ON UPDATE CASCADE
 ON DELETE CASCADE
);

INSERT INTO teacher(id, name, dept_id) VALUES
(101, 'adam', 101),
(102, 'bob', 103),
(103, 'casey', 102),
(104, 'donald', 102),
(105, 'harry', 103);

SELECT * FROM teacher;
UPDATE teacher SET name= UCASE(name);

#***************************************************************************** 
# ALTER query (to change the schema)

# ADD COLUMN query for add new column in existing table 
ALTER TABLE course ADD COLUMN course_price INT NOT NULL; # change course table schema add new course_price column 

# DROP COLUMN query for delete column in existing table 
ALTER TABLE course DROP COLUMN course_price; # change course table schema delete course_price column 

# RENAME TABLE query for rename table name
ALTER TABLE course RENAME TO department; # Rename course table name course to department

# CHANGE COLUMN (rename) query for rename table column name
ALTER TABLE course CHANGE COLUMN course_price price INT; # Rename course_price column name to course

# MODIFY (modify datatype/constraint) query for modify table column datatypes/constraint
ALTER TABLE course MODIFY price VARCHAR(5); # modify table column datatypes
SELECT * FROM course;  
DESCRIBE course;


# Insert and update and delete in course table  
UPDATE course SET price=2000;
INSERT INTO course VALUES(108, 'it', 5500);
delete FROM course where id=108;




