-- 1.	Create a database called “LMT_University”.
CREATE DATABASE LMT_University;
USE LMT_University;


-- 2.	Create an “enrol” schema under “LMT_University”.
CREATE SCHEMA enrol;

-- 3.	Use “enrol” Schema for creating the project.
-- 4.	Create the Database modeling in such a way that Model looks like-
-- 5.	Create an “Address” table under “enrol” schema with the following specifications-

CREATE TABLE enrol.Address (
 AddressID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
 StreetAddress varchar(255) NULL,
 City varchar(50) NOT NULL,
 State varchar(50) NULL,
 PostalCode varchar(10) NULL,
 Country varchar(50) NOT NULL,
 InsertedOn datetime NOT NULL Constraint A_InsertedOn Default GetDate()
);
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES
('5 Schurz Lane','Grybów','NULL','33-330','Poland'),
('628 Waubesa Drive','Jinsheng','NULL','NULL','China'),
('44135 Northfield Way','Nowy Dwór Mazowiecki','NULL','05-160','Poland'),
('335 Bellgrove Road','Gaoqiao','NULL','NULL','China'),
('28 Victoria Junction','Bukovec','NULL','739 84','Czech Republic'),
('6 Stuart Road','Wushan','NULL','NULL','China'),
('730 Barby Street','Zhengchang','NULL','NULL','China'),
('22742 Schiller Street','Sumurwaru','NULL','NULL','Indonesia'),
('31 Elka Junction','Cigembong','NULL','NULL','Indonesia'),
('5 Kenwood Circle','Davao','NULL','8000','Philippines'),
('99 Bunker Hill Crossing','Zarasai','NULL','32001','Lithuania'),
('5 Farragut Center','Jaromerice','NULL','569 44','Czech Republic'),
('25 Lerdahl Street','Nanshi','NULL','NULL','China'),
('918 Bonner Way','Phayakkhaphum Phisai','NULL','44110','Thailand'),
('9 West Alley','Sempu','NULL','NULL','Indonesia'),
('234 Hagan Lane','Rennes','Bretagne','35033','France'),
('33942 Eagle Crest Trail','Oliveiras','Porto','4745-235','Portugal'),
('20791 Hermina Way','B?o L?c','NULL','NULL','Vietnam'),
('86 Lake View Way','Marsa Alam','NULL','NULL','Egypt'),
('19732 Burning Wood Parkway','Piteå','Norrbotten','944 73','Sweden'),
('9320 Oak Valley Road','Rathangani','NULL','A45','Ireland'),
('2638 Waubesa Circle','Honda','NULL','732048','Colombia'),
('6999 Monument Center','Cortes','NULL','6341','Philippines'),
('1 Warbler Hill','Proletar','NULL','NULL','Tajikistan'),
('1311 Crowley Street','Baghlan','NULL','NULL','Afghanistan'),
('19 Walton Way','Öldziyt','NULL','NULL','Mongolia'),
('1 Glacier Hill','Cergy-Pontoise','Île-de-France','95304','France'),
('5094 Gateway Way','Živinice','NULL','NULL','Bosnia and Herzegovina'),
('2 Roth Pass','Tuatuka','NULL','NULL','Indonesia'),
('89531 Northview Road','Ganyi','NULL','NULL','China')

-- 6.	Create a “Department” table under “enrol” schema with the following specifications-

CREATE TABLE enrol.Department(
 DepartmentID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
 DepartmentName varchar(50) NOT NULL,
 DepartmentDescription varchar(MAX) NULL,
 DepartmentCapacity int NOT NULL,
 InsertedOn datetime NOT NULL Constraint D_InsertedOn Default GetDate()
)
INSERT INTO 
enrol.Department(DepartmentName,DepartmentDescription,DepartmentCapacity) VALUES
('IT','Information Technology','60'),
('EE','Electrical Engineering','120'),
('CSE','Computer Science Engineering','140'),
('ME','Mechanical Engineering','110'),
('ECE','Electronic and Communication Engineering','80'),
('AEIE','Applied Electronics and Instrumentation Engineering','50')

-- 7.	Create a “Lecturer” table under “enrol” schema with the following specifications-

CREATE TABLE enrol.Lecturer(
 LecturerID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
 LecturerName varchar(100) NOT NULL,
 LecturerHighestQualification varchar(100) NULL,
 LecturerAge date NOT NULL,
 DepartmentID int NOT NULL FOREIGN KEY REFERENCES 
enrol.Department(DepartmentID),
 InsertedOn datetime NULL Constraint L_InsertedOn Default GetDate()
);
INSERT INTO 
enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) 
VALUES
('Peder Bernaldez','M.Tech','2010-10-10',6),
('Emile Adolthine','PhD','2010-04-04',5),
('Titos Iorizzi','M.Tech','2012-04-09',4),
('Ferris Falck','MSC','2011-05-05',3),
('Georgie McIlwraith','M.Tech','2017-05-08',2),
('Karlen Kearn','MSC','2019-03-03',1),
('Axe Whistlecroft','MCA','2019-03-03',6),
('Drucie Bazek','PhD','2019-04-01',5),
('Antony Gamlin','M.Tech','2019-04-01',4),
('Alexina Moncaster','MBA','2019-04-01',3),
('Milzie Kabos','MCA','2019-03-03',2),
('Arlene Glendza','MS','2019-03-03',1),
('Kirby Kabisch','M.Tech','2019-04-01',1),
('Selma Eliyahu','PhD','2019-04-01',2),
('Ilysa Chooter','M.Tech','2019-04-01',3),
('Rozalie Pennycord','MSC','2010-10-10',4),
('Dacey Glidder','M.Tech','2010-04-04',5),
('Claretta Diaper','MSC','2012-04-09',6),
('Kalil Pendleton','MCA','2011-05-05',6),
('Trudey Brech','PhD','2011-10-05',5),
('Gypsy Ambrosini','M.Tech','2011-03-30',4),
('Lauree Ribbon','MBA','2013-04-04',3),
('Hugo Valois','MCA','2012-04-29',2),
('Perren Chetter','MS','2018-05-03',1),
('Fawn Coffelt','M.Tech','2020-02-26',1),
('Terrie Golby','PhD','2020-02-26',2),
('Jeanette Ciraldo','M.Tech','2020-03-26',3),
('Elfrieda Elijahu','MSC','2020-03-26',4),
('Guthry Blaes','M.Tech','2020-03-26',5),
('Richy Saice','MSC','2020-02-26',6)

-- 8.	Create a “Student” table under “enrol” schema with the following specifications-

CREATE TABLE enrol.Student(
 StudentID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
 StudentFirstName varchar(50) NOT NULL,
 StudentLastName varchar(50) NULL,
 StudentDOB date NOT NULL,
 StudentMobile varchar(15) NULL,
 StudentRollNo int NOT NULL,
 DepartmentID int NOT NULL FOREIGN KEY REFERENCES 
enrol.Department(DepartmentID),
 AddressID int NOT NULL FOREIGN KEY REFERENCES enrol.Address(AddressID),
 InsertedOn datetime NOT NULL Constraint S_InsertedOn Default GetDate()
);
INSERT INTO 
enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES
('Joey','Ironside','1995-11-22','1276234258',1,3,1),
('Karlotta','Garraway','1997-07-06','2192431615',2,3,24),
('Jerry','Stutte','1996-12-18','4125425783',3,1,17),
('Yehudit','Rahill','1995-01-15','9939485406',4,2,29),
('Cele','Crosetto','1998-11-24','3622733725',5,3,16),
('Hazlett','Mowsdale','1995-04-09','1482883476',6,4,23),
('Carlyn','Marks','1996-12-27','6129154080',7,5,20),
('Ellis','Boatman','1997-04-29','8269707118',8,6,7),
('Florina','Boyack','1997-08-03','9623352863',9,3,14),
('Borg','Innett','1997-09-03','5256034960',10,1,19),
('Sayres','Jennings','1996-05-12','8675076454',11,4,27),
('Jarid','Sprull','1998-11-02','1391270091',12,2,6),
('Elvera','Bannard','1996-09-07','7897232539',13,4,24),
('Ody','Inggall','1995-03-05','6094734260',14,5,25),
('Curcio','McWhan','1996-07-29','2394865847',15,6,11),
('Connie','Sinnie','1995-07-19','1473936221',16,6,23),
('Auroora','Nel','1996-09-05','2216400391',17,3,14),
('Wendall','Rosendale','1999-12-30','1818120249',18,3,28),
('Hadley','Bradbury','1996-08-16','6518067697',19,1,10),
('Celine','Smales','1999-07-11','7106508130',20,2,10),
('Jesselyn','Stevenson','1998-05-16','9231672206',21,2,22),
('Corinna','Pinkney','1998-01-16','8323630067',22,5,29),
('Orelle','Adamthwaite','1997-07-26','2539126766',23,3,17),
('Howie','Seaman','1997-12-01','9888259627',24,2,4),
('Sibyl','Corey','1996-07-18','4493239590',25,5,11),
('Ruperta','Peaker','1999-05-22','5124781263',26,5,4),
('Delmer','Roughey','1995-04-21','4175314364',27,3,22),
('Gifford','O`Scannill','1996-10-31','3134783726',28,4,22),
('Hedy','O`Hone','1998-03-29','7316228047',29,2,17),
('Shalna','Hyde-Chambers','1999-11-23','7455116160',30,5,6),
('Ferdie','Di Napoli','1995-01-17','1905908693',31,4,30),
('Piper','Giacomuzzo','1998-09-14','5499340503',32,6,4),
('Gerhardt','Schruurs','1999-11-18','8197494894',33,3,1),
('Mellicent','Buncher','1996-10-03','4584525312',34,5,28),
('Corette','Demead','1997-09-17','4909862137',35,5,17),
('Jorgan','Barson','1997-05-01','6022309183',36,1,21),
('Koral','Bowen','1998-05-12','4198817454',37,4,3),
('Allissa','Kitter','1998-08-17','7328676920',38,5,7),
('Townsend','Doughtery','1998-04-13','2639777958',39,4,7),
('Yolane','Geratt','1998-06-10','2069585951',40,6,17),
('Chrystel','Allwood','1996-09-07','6958461692',41,3,25),
('Dyana','Clutterbuck','1997-09-22','5842483886',42,1,1),
('Nikki','Edy','1999-01-10','5096155315',43,6,25),
('Hendrik','Surr','1997-04-05','2021255732',44,5,11),
('Marta','Bosch','1998-09-28','4075136713',45,6,5),
('Garrik','Pell','1999-04-14','3071057649',46,6,7),
('Stormi','Colbron','1998-10-21','9968113654',47,3,28),
('Angelique','Iacivelli','1995-06-07','9518365081',48,5,7),
('Zack','Hefforde','1999-07-25','5455693035',49,1,29),
('Gusella','Pettiford','1999-08-23','2425172721',50,4,3)

-- 9. Write the following query based on above datasets

-- a. List all the Student information from the Student table. 
SELECT * FROM enrol.Student

-- b. List all the Department information from the Department table.
SELECT * FROM enrol.Department

-- c. List all the Lecturer information from the Lecturer table
SELECT * FROM enrol.Lecturer

-- d. List all the Address information from the Address table
SELECT * FROM enrol.Address

-- e. List the StudentFullName, StudentDOB, StudentMobile from Student [StudentFullName=StudentFirstName + ‘ ‘ + StudentLastName]
SELECT StudentFirstName+' '+StudentLastName as StudentFullName, StudentDOB, 
StudentMobile
FROM enrol.Student

-- f. List the StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile from Student StudentRollNo in AddressID 7.
SELECT 
StudentID,StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo
FROM enrol.Student
WHERE AddressID = 7

-- g. List all the student information whose first name is start with 'B'
SELECT *
FROM enrol.Student
WHERE StudentFirstName LIKE 'B%'

-- h. List all the student information whose first name is start and end with 'A'
SELECT *
FROM enrol.Student
WHERE StudentFirstName LIKE 'A%A'

-- i. Count the number of Student from Student table whose DepartmentID 6.
SELECT COUNT(StudentID) AS StudentCount
FROM enrol.Student
WHERE DepartmentID = 6

-- j. List all the StudentFullName, StudentAge, StudentMobile from Student [StudentFullName= StudentFirstName + ‘ ‘ + StudentLastName] [StudentAge= Current date – DOB (in Years)]
SELECT StudentFirstName+' '+StudentLastName as StudentFullName,
datediff( YY, StudentDOB, getdate()) AS StudentAge,StudentMobile
FROM enrol.Student

-- k. List all the StudentFullName, StudentAge, StudentMobile whose Age>23 from Student [StudentFullName= StudentFirstName + ‘ ‘ + StudentLastName]
SELECT StudentFirstName+' '+StudentLastName as StudentFullName,
datediff( YY, StudentDOB, getdate()) AS StudentAge,StudentMobile
FROM enrol.Student
WHERE datediff( YY, StudentDOB, getdate()) > 23

-- l. List all the StudentFullName, StudentAge, StudentMobile whose Age is either 21 or 23 from Student [StudentFullName= StudentFirstName + ‘ ‘ + StudentLastName] [StudentAge= Current date – DOB (in Years)]
SELECT StudentFirstName+' '+StudentLastName as StudentFullName,
datediff( YY, StudentDOB, getdate()) AS StudentAge,StudentMobile
FROM enrol.Student
WHERE datediff( YY, StudentDOB, getdate()) = 21 or datediff( YY, StudentDOB, 
getdate()) = 23

-- m. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer.

SELECT LecturerID, LecturerName, LecturerHighestQualification, LecturerAge
FROM enrol.Lecturer

-- n. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer whose HighestQualification is either “MS” or “PhD”.

SELECT LecturerID, LecturerName, LecturerHighestQualification, LecturerAge
FROM enrol.Lecturer
WHERE LecturerHighestQualification = 'MS' OR LecturerHighestQualification = 'PhD'

-- o. List all the lecturer information who belongs to DepartmentID 2.
SELECT *
FROM enrol.Lecturer
WHERE DepartmentID = 2

-- p. List all the lecturer information whose name end with “R”.
SELECT *
FROM enrol.Lecturer
WHERE LecturerName LIKE '%R'

-- q. List all the lecturer information whose name either start or end with “E”.
SELECT *
FROM enrol.Lecturer
WHERE LecturerName LIKE 'E%' OR LecturerName LIKE '%E'

-- r. List all the lecturer name in capital letter.
SELECT UPPER(LecturerName) AS LecturerName 
FROM enrol.Lecturer

-- s. Display 5 character from the lecturer name along with LecturerID and LecturerHighestQualification.

SELECT SUBSTRING(LecturerName, 1, 5) AS LecturerName, LecturerID 
,LecturerHighestQualification
FROM enrol.Lecturer

-- t. List LecturerID, LecturerName, LecturerHighestQualification, LecturerAge(in year) [LecturerAge= Current Date – LecturerAge)] (in year).

SELECT LecturerID, LecturerName, LecturerHighestQualification, 
datediff( YY, LecturerAge, getdate()) AS LecturerAge
FROM enrol.Lecturer

-- u. List DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity from Department.

SELECT DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity
FROM enrol.Department

-- v. List all the Department information who’s DepartmentName is “ECE”.
SELECT *
FROM enrol.Department
WHERE DepartmentName = 'ECE'

-- w. List all DepartmentName, DepartmentDescription, DepartmentCapacity from Department whose capacity is greater than 60.

SELECT DepartmentName, DepartmentDescription, DepartmentCapacity
FROM enrol.Department
WHERE DepartmentCapacity > 60

-- x. List all AddressID, StreetAddress, City, State, PostalCode, Country from Address.

SELECT AddressID, StreetAddress, City, State, PostalCode, Country
FROM enrol.Address

-- y. List all AddressID, StreetAddress, City, State, PostalCode, Country from Address who belongs to “Poland” country.
SELECT AddressID, StreetAddress, City, State, PostalCode, Country
FROM enrol.Address
WHERE Country = 'Poland'

-- z. List all the Address information whose state is null.
SELECT *
FROM enrol.Address
WHERE State = 'NULL'

-- aa. List all the Address information whose PostalCode is not null.
SELECT * 
FROM enrol.Address
WHERE PostalCode <> 'NULL'

-- bb. List all the Address information whose City name is "Honda" and Country name is "Colombia"
SELECT * 
FROM enrol.Address
WHERE City = 'Honda' AND Country = 'Colombia'

-- 10. Write the following Query based on the above datasets.

-- a. List unique DOB from Student.
SELECT DISTINCT(StudentDOB)
FROM enrol.Student

-- b. List unique DepartmentName from Department.
SELECT DISTINCT(DepartmentName)
FROM enrol.Department

-- c. List unique Country name from Address.
SELECT DISTINCT(Country)
FROM enrol.Address

-- d. List unique State name from Address.
SELECT DISTINCT(State)
FROM enrol.Address

-- e. List unique City name from Address.
SELECT DISTINCT(City)
FROM enrol.Address

-- f. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerYearService from Lecturer [LecturerYearService= Current Date – LecturerAge](in year).
SELECT LecturerID, LecturerName, LecturerHighestQualification,
datediff( YY, LecturerAge, getdate()) AS LecturerYearService
FROM enrol.Lecturer

-- g. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerType from Lecturer [LecturerType= if LecturerYearService< 5 then "Begining Level Experience" else if LecturerYearService>= 5 and LecturerYearService<10 then "Mid Level experience" else "Experienced".
SELECT s.LecturerID,s.LecturerName,s.LecturerHighestQualification,
CASE
 WHEN s.LecturerYearService < 5 THEN 'Begining Level Experience'
 WHEN s.LecturerYearService >=5 AND s.LecturerYearService < 10 THEN 'Mid Level 
Experience'
 ELSE 'Experienced'
END AS LecturerType
FROM 
(SELECT LecturerID,LecturerName,LecturerHighestQualification,
datediff( YY, LecturerAge, getdate()) AS LecturerYearService FROM enrol.Lecturer) s

-- 11. Write the following Query based on the above datasets.

-- a. Display all Student and their Department Information based on the relationship.
SELECT *
FROM enrol.Student t1 INNER JOIN enrol.Department t2 
ON t1.DepartmentID = t2.DepartmentID

-- b. Display all Student and their Address Information based on the relationship.
SELECT *
FROM enrol.Student t1 INNER JOIN enrol.Address t2 
ON t1.AddressID = t2.AddressID

-- c. Display all Department and their Lecturer Information based on the relationship.
SELECT *
FROM enrol.Department t1 INNER JOIN enrol.Lecturer t2 
ON t1.DepartmentID = t2.DepartmentID

-- d. Display all Student with their Department with Lecturer Information based on the relationship.
SELECT *
FROM enrol.Student t1 INNER JOIN enrol.Department t2 
ON t1.DepartmentID = t2.DepartmentID INNER JOIN enrol.Lecturer t3
ON t2.DepartmentID = t3.DepartmentID

-- e. Display all Student with their Address and Department Information based on the relationship.
SELECT *
FROM enrol.Address t1 INNER JOIN enrol.Student t2 
ON t1.AddressID = t2.AddressID INNER JOIN enrol.Department t3 
ON t2.DepartmentID = t3.DepartmentID
 
-- f. Display all Student with Address, Department and Lecturer Information based on the relationship.
SELECT *
FROM enrol.Address t1 INNER JOIN enrol.Student t2 
ON t1.AddressID = t2.AddressID INNER JOIN enrol.Department t3 
ON t2.DepartmentID = t3.DepartmentID INNER JOIN enrol.Lecturer t4
ON t3.DepartmentID = t4.DepartmentID

-- g. Display all Student with Address, Department and Lecturer Information who belongs to either “ME” or “ECE” department.
SELECT *
FROM enrol.Address t1 INNER JOIN enrol.Student t2 
ON t1.AddressID = t2.AddressID INNER JOIN enrol.Department t3 
ON t2.DepartmentID = t3.DepartmentID INNER JOIN enrol.Lecturer t4
ON t3.DepartmentID = t4.DepartmentID
WHERE DepartmentName = 'ME' OR DepartmentName = 'ECE'

-- h. Display Student with Department and their Lecturer information based on the LecturerHighestQualification either “MS” or “PhD”.
SELECT *
FROM enrol.Student t1 INNER JOIN enrol.Department t2 
ON t1.DepartmentID = t2.DepartmentID INNER JOIN enrol.Lecturer t3
ON t2.DepartmentID = t3.DepartmentID
WHERE LecturerHighestQualification = 'MS' OR LecturerHighestQualification = 'PhD'

-- i. Display Student with Department and Address Information, where student belongs to “Thailand” country.
SELECT *
FROM enrol.Address t1 INNER JOIN enrol.Student t2 
ON t1.AddressID = t2.AddressID INNER JOIN enrol.Department t3 
ON t2.DepartmentID = t3.DepartmentID 
WHERE Country = 'Thailand'

-- j. Display Count of Student, Department wise.
SELECT DepartmentName, COUNT(StudentID) AS StudentCount
FROM enrol.Student t1 INNER JOIN enrol.Department t2 
ON t1.DepartmentID = t2.DepartmentID
GROUP BY DepartmentName
ORDER BY StudentCount DESC

-- k. Display Count of Lecturer, Department wise.
SELECT DepartmentName, COUNT(LecturerID) AS LecturerCount
FROM enrol.Lecturer t1 INNER JOIN enrol.Department t2
ON t1.DepartmentID = t2.DepartmentID
GROUP BY DepartmentName

-- l.  Display Count of Student, Country wise.
SELECT Country, COUNT(StudentID) AS StudentCount
FROM enrol.Student t1 INNER JOIN enrol.Address t2 
ON t1.AddressID = t2.AddressID
GROUP BY Country


-- 12. Write the following Query based on the above datasets.

-- a. Create new table StudCopy and copy all records from Student table.
SELECT * INTO enrol.StudCopy
FROM enrol.Student;

-- b. Create a new table DeptCopy and copy only the schema from Department table.
SELECT * INTO enrol.DeptCopy
FROM enrol.Department
WHERE 1 = 0;

-- c. Create a new table DepartmentCopy and copy all records from Department table.
SELECT * INTO enrol.DepartmentCopy
FROM enrol.Department;

-- d. Create a new table AddrCopy and copy only the schema from Address table.
SELECT * INTO enrol.AddrCopy
FROM enrol.Address
WHERE 1 = 0;

-- e. Create a new table AddrCopy and copy all the records from Address table.
SELECT * INTO enrol.AddrCopy
FROM enrol.Address

-- f. Create a new table LecturerCopy and copy all the records from Lecturer table.
SELECT * INTO enrol.LecturerCopy
FROM enrol.Lecturer


-- 13. Write the following Query based on the above datasets. 

-- a. Delete all the records from LecturerCopy table.
DELETE FROM enrol.LecturerCopy

-- b. Delete all the student information for the students who belong to “IT” department.
DELETE FROM t1
FROM enrol.StudCopy t1 INNER JOIN enrol.DepartmentCopy t2 
ON t1.DepartmentID = t2.DepartmentID
WHERE DepartmentName = 'IT'

-- c. Delete all the student information for the students who belong to “Indonesia”country.
DELETE FROM t1
FROM enrol.StudCopy t1 INNER JOIN enrol.AddrCopy t2 
ON t1.AddressID = t2.AddressID
WHERE Country = 'Indonesia'

-- d. Delete all the student information for the student who belongs to “Nanshi” city.
DELETE FROM t1
FROM enrol.StudCopy t1 INNER JOIN enrol.AddrCopy t2 
ON t1.AddressID = t2.AddressID
WHERE City = 'Nanshi'

-- e. Delete all the student information for the student who belongs to “Bretagne” state.
DELETE FROM t1
FROM enrol.StudCopy t1 INNER JOIN enrol.AddrCopy t2 
ON t1.AddressID = t2.AddressID
WHERE State = 'Bretagne'

-- 14. Write the following Query based on the above datasets.

-- a. Update StudentMobile for those students who belongs to Department “ME”.
UPDATE enrol.Student
SET StudentMobile = 0000000000
FROM enrol.Student t1 INNER JOIN enrol.Department t2 
ON t1.DepartmentID = t2.DepartmentID
WHERE t2.DepartmentName = 'ME'

-- b. Update Student DepartmentID as 3, for the StudentID=42.
UPDATE enrol.Student
SET DepartmentID = 3
WHERE StudentID = 42

-- c. Update LecturerHighestQualification as “PHd” for the Lecturer whose LecturerHighestQualification= “PhD”.
UPDATE enrol.LecturerCopy
SET LecturerHighestQualification = 'PHd'
WHERE LecturerHighestQualification = 'PhD'

-- d. Update PostalCode as “00000” for the Address which contain NULL as a PostalCode.
UPDATE enrol.AddrCopy
SET PostalCode = '00000'
WHERE PostalCode = 'NULL'

-- e. Update StudentLastName as “Paul” for the Student whose Name is “Jerry”.
UPDATE enrol.Student
SET StudentLastName = 'Paul'
WHERE StudentFirstName = 'Jerry'









