Use NewHopeASDB
go
--PARAMETARIZED FUNCTION
create function courseFacMem(@courseName nvarchar(50))
returns table 
as return(
Select sh.StaffID, sh.FirstName, sh.LastName, c.CourseID, c.Name,  d.DepartmentName, f.FacultyName
from course c 
join Staff sh on c.deptid=sh.deptid 
join Department d on c.deptid=d.deptid
join Faculty f on d.FacultyID= f.FacultyID
where freetext(c.name, @courseName)
)

--TESTING FUNCTION
select * from courseFacMem('Plant Genetics and Breeding')

--TABLES FOR JOIN STATEMENT
--Department
--Staff
--course
--Faculty
