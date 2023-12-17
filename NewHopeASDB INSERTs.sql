--!!--NOTE: switch to "NewHopeASD" before executing--!!--
use NewHopeASDB
go
--FACULTY TABLE
insert into Faculty values ('Engineering')
insert into Faculty values ('Agriculture')
insert into Faculty values ('Physical Science')
insert into Faculty values ('Education')
insert into Faculty values ('Environmental Science ')
insert into Faculty values ('Life Science')
insert into Faculty values ('healthy Science ')
insert into Faculty values ('Postgraduate   ')

--DEPARTMENT TABLE
insert into Department 
values('Civil Engineering', 1 ),
('Electrical & Electorics', 1 ),
('ICT', 1 ),
('Mechanical Engineering', 1 )


insert into Department 
values
('Soil Science', 2) ,
('Crop Science ', 2) ,
('Animal Science', 2),
('Forestry & Fisheries', 2),
('Agric Economics & Extension ', 2)



insert into Department 
values
('Biochemistry ', 3),
('Biological Science ', 3),
('Computer Science & information Technology', 3),
('Pure & Applied Chemistry ', 3),
('physics', 3),
('Mathematics ', 3)



insert into Department 
values

(' Technology Education', 4),
(' Science Education', 4),
(' Education Foundation', 4)


insert into Department 
values
('Architechture', 5),
('Building', 5),
('Quantity Surveying', 5),
('Urban & Regional Planning', 5)

--select * from department

insert into Department 
values
('Plant Science and Biotechnology', 6),
('Animal and Enviromental Biology', 6),
('Microbiology', 6)


insert into Department 
values
('Basic Medical Sciences', 7),
('Clinical Sciences', 7),
('Nursing Sciences', 7)


--RANK TABLE
insert into [Rank] 
values('Prof'),
('Asst Prof'),
('Lecturer I'),
('Lecturer II'),
('Assit lecturer'),
('Visiting prof')



--STAFF TABLE
----- b.ed ,mls,phd,b.a(education)
insert into staff(FirstName,LastName,Academic_Qualification,DeptID,Date_of_birth,HireDate,Email,Phone_number,Gender) 
values('Gloria O','Adedoja','B.ED ','10','1990-05-02','2012-03-12','gloria210@gmail.com','09123457656','F' ),
('musa O','yohanna','B.ED ','10','1991-05-02','2014-05-12','musaa210@gmail.com','09123457696','M' ),
('alex','john','MLS ','11','1991-05-03','2014-01-02','alexJ@gmail.com','08123457696','M' ),
('aisha','danbaba','MLS ','23','1996-11-11','2018-05-12','aishababa@gmail.com','03123457446','F' ),
('Ayouna','yohanna','B.A ','11','1993-12-05','2017-05-12','AyounaYohanna@gmail.com','07213457697','F' ),
('Aliyu','Aliyu','B.ED ','15','1991-05-02','2014-05-12','Aaliyu@gmail.com','09113547696','M' ),
('Alexander','Collins','PHD ','15','1987-01-15','2018-06-01','Axcollins@gmail.com','07098765432','M' ),
('Kris','Adeoye','B.A ','16','1989-05-03','2012-03-12','krisAdeoye@gmail.com','09122134563','M' ),
('Jeremiah','jeremiah','PHD ','24','1990-07-24','2019-01-04','JeremiahJ@gmail.com','08134256671','M' ),
('Marie','Jesse','B.A ','14','1997-09-11','2018-11-12','Mariejesse@gmail.com','07144536711','F' )


--STAFFRANKHISTORY TABLE
insert into StaffRankHistory(staffid, rankid, salary, startdate, enddate) 
values(101,1,20000,'2012-03-15','2014-05-07'),
(101,2,14000,'2014-05-15','2018-06-09' ),
(105,4,14500,'2014-01-05','2018-10-10' ),
(102,3,16000,'2018-05-13','2024-06-07' ),
(104,1,20000,'2017-03-14','2017-11-11' ),
(103,6,16000,'2014-05-17','2014-09-13' ),
(106,5,16000,'2018-06-05','2020-09-12' ),
(107,6,20000,'2012-03-15','2013-06-08'),
(108,1,30000,'2019-01-05','2024-06-09'),
(109,4,19500,'2018-11-14','2024-06-09')


--STAFFDEPTHISTORY TABLE
insert into StaffDeptHistory(Staffid,deptid, startdate, enddate)
 values(101,10,'2012-03-15','2014-05-07'),
(101,11,'2014-05-15','2018-06-09' ),
(105,10,'2014-01-05','2018-10-10' ),
(102,12,'2018-05-13','2024-06-07' ),
(104,15,'2017-03-14','2017-11-11' ),
(103,15,'2014-05-17','2014-09-13' ),
(106,11,'2018-06-05','2020-09-12' ),
(107,16,'2012-03-15','2013-06-08'),
(108,24,'2019-01-05','2024-06-09'),
(109,14,'2018-11-14','2024-06-09')

--COURSE TABLE
insert into course(name, deptid) 
values --CIVIL ENGINEERING
		('structural analysis',10),
		('Constructional Management',10),
		('Environment Engineering',10),
--ELECTRICAL & ELECTRONS
('Circuit Analysis',11),
('Electronics',11),
('Power systems',11),
--MECHANICAL ENGINEERING
('Thermodynamics',13),
('Heat Transfer',13),
('Machine Design',13),
--SOIL SCIENCE
('Soil Fertility and Plant ',14),
('Soil Management and Land Use ',14),
('Soil and Water Conservation ',14),
--CROP SCIENCE
('Crop Growth and Development',15),
('Plant Genetics and Breeding',15),
('Seed Science and Technology',15),
--ANIMAL SCIENCE
('Animal Nutrition and Feeding',16),
('Animal Breeding and Genetics',16),
('Animal Health and Disease Management',16),
--COMPUTER SCIECE & IT
('Introduction to Programming and Problem Solving',21),
('Data Structures and Algorithms',21),
('Database Systems',21),
--PURE & APPLIED SCIENCE
('Organic Chemistry I',22),
('Thermodynamics and Kinetics',22),
('Analytical Chemistry',22),
--PHYSICS
('Nuclear and Particle Physics',23),
('Classical Quantum Mechanics',23),
('Electricity, Magnetism and Modern Physics',23),
('Thermodynamics',23),
--MATHEMATIC
('Linear Algebra I',24),
('Calculus I',24),
('Numerical Analysis I',24),
('Statistics and Probability',24)

--STAFFCOURSE TABLE
insert into StaffCourse(StaffID,CourseID) 
values(100,11),
(107,16),
(101,12),
(106,22),
(105,23),
(109,22),
(103,37),
(102,15),
(108,39),
(104,14)


insert into publications(PublicationID,Staffid,title,authors,pubdate) values
(001,100,'Advanced constructioal mng','Gloria  Adedoja','2014-06-09'),
(002,101,'The environment','musa O yohanna','2017-07-20'),
(003,105,'Breeding and genetics I','Aliyu Aliyu','2018-02-01'),
(004,102,'principles of electronics','Alex John','2023-09-29'),
(005,103,'Thermodynamic ed.1','Aisha danbaba','2015-04-10'),
(006,104,'joy of Crop development','Ayouna Yohanna','2020-01-01'),
(007,106,'Programming 101','Alexander collins','2019-08-15'),
(008,107,'dynamics of thermodynamic II','kris Adeoye','2015-11-30'),
(009,108,'basic calculux','Jeremiah J','2024-02-01'),
(010,109,'Electronics ed.1','marie jesse','2021-03-03')

--SELECT STATEMENTS
--select * from Faculty
--select * from Department
--select * from staff
--select * from course 
--select * from StaffCourse
--select * from rank
--select * from StaffRankHistory
--select * from StaffDeptHistory
--select * from publications

go