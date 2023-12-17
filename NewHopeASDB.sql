create database NewHopeASDB

use NewHopeASDB
go
--- the Faculty table  
create table Faculty(
FacultyID int identity(1,1) not null primary key,
FacultyName nvarchar(25) not null 
)
--- the Department table 
create table Department (
DeptID int identity(10,1)  not null primary key,
DepartmentName nvarchar(60) not null,
FacultyID int  constraint fkFacID foreign key references Faculty(facultyID) on update cascade on delete set null
)

--- the [Rank] table
create table [Rank](
RankID int identity (1,1) not null primary key,
Name nvarchar(25)not null constraint  chkName check(name in ('Prof','Asst Prof','Lecturer I','Lecturer II','Assit lecturer','Visiting prof' ))   
)
---the Staff table
create table Staff(
StaffID int identity (100,1) not null primary key,
FirstName nvarchar (25) not null,
LastName  nvarchar (25) not null,
Academic_Qualification nvarchar(25),
DeptID int constraint fkDepID   
foreign key references Department(DeptID) on update  cascade on delete set null ,
Date_of_birth date not null ,
HireDate date not null,
Email nvarchar(200) ,
Phone_number char(20) null CONSTRAINT PH CHECK
 (Phone_number like '[0][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') ,
Gender char null constraint chkgender check (Gender in ('M','F'))  
)

--the StaffRankHistory table
create table StaffRankHistory(
staffID int constraint fkStaffIDrank foreign key  references staff(StaffID) 
on update cascade on delete set null,
RankID int constraint fkrankID foreign key references [Rank](rankID) 
on update cascade on delete set  null,
Salary money,
StartDate date,
EndDate date,
)

--- the StaffDeptHistory table
create table StaffDeptHistory(
StaffID int constraint fkSaffDepHis  foreign key references Staff(StaffID) 
on update  no action on delete set null ,
DeptID int constraint fkDeptHis  foreign key references Department(DeptID) 
on update no action on delete set null,
startDate date,
EndDate date
)
--- the course table
create table course(
CourseID int identity (10,1) not null primary key,
Name nvarchar(200) null,
DeptID  int constraint fkCourseDept foreign key references Department(DeptID) on  update cascade on delete set null, 
)

---the StaffCourse table
create table StaffCourse (
StaffID int constraint fkStaffIDCourse foreign key references Staff(StaffID) 
on update no action on delete set null,
CourseID int constraint fkStaffCourse  foreign key references Course(courseID) 
on update no action  on delete set null
)

--- the Publications table
create table Publications(
PublicationID  int not null primary key,
StaffID int constraint fkpublication foreign key references Staff(StaffID) on update cascade on delete set null,
Title nvarchar(200) not null,
Authors nvarchar (150),
PubDate date 
)

go