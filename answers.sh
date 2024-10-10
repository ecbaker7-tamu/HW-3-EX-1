
-- PART ONE --
SELECT * FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT * FROM students WHERE Age=30 AND Gender='F';
SELECT Points FROM students WHERE name='Alex';
--INSERT INTO students VALUES(7,'Emily', '23', 'F', 300);
UPDATE students SET Points = 500 WHERE name='Basma';
UPDATE students SET Points = 150 WHERE name='Alex';

CREATE TABLE graduates(
ID INTEGER PRIMARY KEY AUTOINCREMENT,
Name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation TEXT
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='8/9/2018' WHERE Name='Layal';
DELETE FROM students where name='Layal';

---
--- PART 2 ---

SELECT employees.name, employees.Company, employees.Role, companies.date FROM employees Inner join companies ON employees.Company=companies.name;


CREATE TABLE employeeTable(
Name TEXT NOT NULL UNIQUE,
Company TEXT NOT NULL,
Date INTEGER
);

SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.Name and companies.date>2000;
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.Name and employees.Role='Graphic Designer';

---
--- PART 3 ---
SELECT * FROM students WHERE points=(SELECT max(points) FROM students);
SELECT avg(points) FROM students;
SELECT COUNT(name) FROM students where points=500;
SELECT Name FROM students WHERE Name glob '*s*';
SELECT Name FROM students ORDER BY points DESC;