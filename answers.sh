
1-"SELECT name FROM students";
2-"SELECT * FROM students WHERE Age>30;"
3-"SELECT * FROM students WHERE age =30 AND gender = "F";"
4-"SELECT Points FROM students WHERE students.name = "Alex";"
5-"INSERT INTO students (ID,Name,Age,Gender,Points) VALUES (8,"omar abdallah",25,"Male",60);"
6-"UPDATE students SET Points= Points+30 WHERE name="Basma";"
7-"UPDATE students SET Points= Points-30 WHERE name="Alex";"

#Creat a table graduates 

CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation" TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);

#1.Copy Layal's data from students to graduates
INSERT INTO graduates (ID,Name,Age,Gender,Points)
SELECT *,
FROM students,
WHERE Name = "Layal";

#2.Add the graduation date previously mentioned to Layal's record in graduates
UPDATE graduates
SET Graduation = "08/09/2018";

#3.Remove Layal's record from students
DELETE FROM students 
WHERE Name="Layal";

#join table
1-SELECT e.Name,e.Company,Date 
FROM employees as e JOIN companies as c on e.Company = c.Name;
2-SELECT employees.Name 
FROM employees JOIN companies on Date<2000 AND employees.Company = companies.Name;
3-SELECT Company FROM employees WHERE Role like 'Graphic Designer'
GROUP by Company HAVING employees.Company in(
	                                         SELECT name 
											 FROM companies);
4-