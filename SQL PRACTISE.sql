CREATE DATABASE temp;

USE temp;

CREATE TABLE student(id INT PRIMARY KEY, name VARCHAR(50));	-- 'varchar' datatype allocates memory dynamically, like it dont allocate 50bytes from starting only unlike 'char' it only allocates memory used like for Aditya it will only allocate 6bytes

INSERT INTO student VALUES(1,'Aditya');

SELECT * FROM student;

INSERT INTO student VALUES(2,'Vibhor'),(3,'Lakshit');

SELECT * FROM student;

/* some datatypes format
DATE format -> YYYY-MM-DD, 
DATETIME format -> YYYY-MM-DD HH:MM:SS, 
TIMESTAMP format -> YYYYMMDDHHMMSS, 
TIME format -> HH:MM:SS
TINY INT ranges from -127->127 but when we prefix it with UNSIGNED TINY INT it ranges from 0->255
*/

/* Types of SQL Commands
1. DDL(Data Definition Language): defining relation schemea
CREATE: This command is used to create the database or its objects (like table, index, function, views, store procedure, and triggers).
DROP: This command is used to delete objects from the database.

ALTER: This is used to alter the structure of the database.
	ALTER TABLE account ADD interest FLOAT NOT NULL DEFAULT 0;
	ALTER TABLE MODIFY interest DOUBLE NOT NULL DEFAULT 0;
	DESC account;	it will describe all attributes/column of the table
	ALTER TABLE account CHANGE COLUMN interest saving_interest FLOAT NOT NULL DEAFULT 0;
	ALTER TABLE account DROP COLUMN saving_interest 
    ALTER TABLE account RENAME TO account_details
    
TRUNCATE: This is used to remove all records from a table, including all spaces allocated for the records are removed.
COMMENT: This is used to add comments to the data dictionary.
RENAME: This is used to rename an object existing in the database.

2. DQL(Data Query Language):
SELECT: It is used to retrieve data from the database.

3. DML(Data Manipulation Language): used to perform modification in the DB
INSERT: It is used to insert data into a table.
UPDATE: It is used to update existing data within a table.
DELETE: It is used to delete records from a database table.
LOCK: Table control concurrency.
CALL: Call a PL/SQL or JAVA subprogram.
EXPLAIN PLAN: It describes the access path to data.

4. DCL(Data Control Language):
GRANT: This command gives users access privileges to the database.
REVOKE: This command withdraws the user’s access privileges given by using the GRANT command.

5. TCL(Transaction control Language):
BEGIN: Opens a Transaction.
COMMIT: Commits a Transaction.
ROLLBACK: Rollbacks a transaction in case of any error occurs.
SAVEPOINT: Sets a save point within a transaction.
*/

DROP DATABASE IF EXISTS temp;	-- it will delete temp if it exist 

/* Can SELECT command execute without FROM clause? 
Yes, 1) SELECT 55 + 11 -> 66
     2) SELECT now(), it returns current time of the server
     3) SELECT ucase('Aditya') -> ADITYA, lcase('Aditya') -> aditya
*/

/* CLAUSES IN SQL
BETWEEN clause -> SELECT * FROM WORKERS WHERE SALARY BETWEEN 0 AND 30000; here 0 and 30000 both inclusive

IN clause -> SELECT * FROM WORKERS WHERE DEPARTMENT IN('HR','ADMIN','FINANCE'); it reduces OR conditions, here DEPARTMENT can be HR or ADMIN or FINANCE

NOT clause -> SELECT * FROM WORKERS WHERE DEPARTMENT NOT IN('HR','ADMIN','FINANCE');

IS NULL clause -> SELECT * FROM CUSTOMER WHERE PINCODE IS NULL;

'%' - means any number of character from 0 to n. SELECT * FROM WORKERS WHERE first_name LIKE '%i%'; return all names with i

'_' -> only one character. SELECT * FROM WORKERS WHERE first_name LIKE '_i%'; return first name with 2nd character as i

ORDER BY clause -> SELECT * FROM WORKERS ORDER BY SALARY ASC/DESC; by default order by is asc

DISTINCT clause -> SELECT DISTINCT DEPARTMENT FROM WORKERS;

GROUP BY clause -> used for aggregation of data entries in table. Various aggregation functions are used with group by clause.
SELECT DEPARTMENT, COUNT(DEPARTMENT) FROM WORKERS GROUP BY DEPARTMENT;	it will return department names with count of workers in that department
SELECT DEPARTMENT, AVG(SALARY) FROM WORKERS GROUP BY DEPARTMENT;
SELECT DEPARTMENT, MIN(SALARY) FROM WORKERS GROUP BY DEPARTMENT;
SELECT DEPARTMENT, MAX(SALARY) FROM WORKERS GROUP BY DEPARTMENT;
SELECT DEPARTMENT, SUM(SALARY) FROM WORKERS GROUP BY DEPARTMENT;

Filtering in GROUP BY is done using HAVING:
SELECT DEPARTMENT, COUNT(DEPARTMENT) FROM WORKERS GROUP BY DEPARTMENT HAVING COUNT(DEPARTMENT)>2;
WHERE vs HAVING -> WHERE is used to filter the rows from the table based on specific conditon whereas HAVING is used to filter the rows from the groups based on the specific condition.
HAVING is used after GROUP BY whereas WHERE is used before GROUP BY
*/

/* CHECK Constraint
CREATE TABLE account(
id INT PRIMARY KEY,
name VARCHAR(50) UNIQUE,
balance INT,
CONSTRAINT acc_bal_check CHECK(balance>1000)
)
*/

