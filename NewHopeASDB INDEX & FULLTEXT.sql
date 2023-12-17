
use NewHopeASDB
go
create Nonclustered index idx_faculty on faculty(facultyname)
create  NONclustered  index idx_depart on department(Departmentname)
create nonclustered index idx_staff on staff(firstName, lastname)

-----fulltext creation
create fulltext catalog  coursecatalog as default
create unique index indexcourse on dbo.course(courseID) 
create fulltext index on course(name) key index indexcourse
---fulltext search publication
create unique index indexpublication on dbo.Publications(publicationID)
create fulltext index on publications (title) key index indexpublication

 --JOIN STTEMENTS TO TEST FULLTEXT IMPLEMENTATION
 --select * from course where freetext (name,'Heat Transfer');
 --select * from publications where contains (title,'electronics');
 --select * from course c
 --join StaffDeptHistory sh on c.DeptID=sh.DeptID
 --where freetext (c.name,'Crop Growth and Development');


