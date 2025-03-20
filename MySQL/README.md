# SQL Commands and Queries

This repository contains various SQL commands and queries for database management, schema design, data manipulation, and data retrieval. The goal is to provide a structured and practical reference for working with SQL.

## 📂 Repository Structure

```
📦 SQL-Commands
 ┣ 📜ApnaCollege.sql
 ┣ 📜 README.md
```

## 🚀 Getting Started

### Prerequisites
- MySQL, PostgreSQL, or any SQL-supported database system.
- SQL Client (MySQL Workbench, pgAdmin, or any other SQL IDE).
- Basic understanding of SQL commands.

### Installation
1. Clone this repository:
   ```sh
   git clone https://github.com/Abhishekh1516techboy/DataBase.git
   ```
2. Navigate to the project directory:
   ```sh
   cd SQL-Commands
   ```
3. Open any SQL file in your preferred SQL client and execute the commands.

## 📜 SQL Commands Overview

### Database Operations
### `SHOW DATABASES;` - List all databases.
### `CREATE DATABASE college;` - Create a database.
### `DROP DATABASE pets;` - Delete a database.
### `USE college;` - Select a database.

### Table Operations
### `CREATE TABLE student (...);` - Create a table.
### `SHOW TABLES;` - List all tables in the current database.
### `DESCRIBE student;` - Show table structure.
### `DROP TABLE student;` - Delete a table.

### Data Manipulation
### `INSERT INTO student VALUES (...);` - Insert data into a table.
### `SELECT * FROM student;` - Retrieve all data.
### `UPDATE student SET ... WHERE ...;` - Update data.
### `DELETE FROM student WHERE ...;` - Delete specific rows.

### Querying Data
### `SELECT name, roll FROM student WHERE age>23;` - Filter data.
### `SELECT DISTINCT city FROM student;` - Retrieve unique values.
### `SELECT * FROM student ORDER BY marks DESC LIMIT 3;` - Sort and limit results.

### Aggregate Functions
### `SELECT COUNT(marks) FROM student;` - Count rows.
### `SELECT MAX(marks) FROM student;` - Get the highest value.
### `SELECT AVG(marks) FROM student;` - Calculate the average.

### Grouping and Filtering
### `SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks) ASC;` - Group data.
### `SELECT city, marks FROM student WHERE grade='F' GROUP BY city, marks HAVING MAX(marks);` - Use `HAVING` to filter groups.

### Foreign Keys
- Create relationships between tables using foreign keys.
### `FOREIGN KEY (dept_id) REFERENCES course(id) ON UPDATE CASCADE ON DELETE CASCADE;`

### Altering Tables
### `ALTER TABLE course ADD COLUMN course_price INT NOT NULL;` - Add a column.
### `ALTER TABLE course DROP COLUMN course_price;` - Remove a column.
### `ALTER TABLE course RENAME TO department;` - Rename a table.
### `ALTER TABLE course MODIFY price VARCHAR(5);` - Modify column properties.

## 🛠 Practice Questions

### Q1: Create a company database and store employee information.
**Solution:**
- Create `technologyfire` database.
- Create `employee` table (id, name, salary).
- Insert sample employee data.
- Retrieve employee details.

### Q2: Find the average marks in each city in ascending order.
**Solution:**
```sql
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks) ASC;
```

### Q3: Count the total payment according to each payment method.
**Solution:**
- Create `courseuser` table.
- Insert sample customer payment data.
- Retrieve counts per payment method using `GROUP BY`.

## 📜 License
This repository is open-source under the [MIT License](LICENSE).

## 📢 Acknowledgments
Special thanks to SQL tutorial resources for guiding this learning process.

---
Happy Querying! 🎯