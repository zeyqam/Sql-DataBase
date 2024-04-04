use CourseDatabase
create table Users(
[Id] int primary key identity(1,1),
[Name] nvarchar (50),
[Email] nvarchar (100)
)
create table Doctors(
[Id] int primary key identity(1,1),
[Name] nvarchar (50),
[Email] nvarchar (100)
)
select * from Users
union
select* from Doctors
use CourseDatabase
select *from users
union all
select*from Doctors
 select [Email] from users
 union all
 select [Email] from Students

 select *from Users
 intersect
 select*from Doctors

 select *from Doctors
 except
 select*from Users
 
 select Count(*) as 'Student count',Age
 from Students
 Group by Age;

 declare @num1 int=50;
 declare @num2 int=30;

 if @num1>@num2
 print 'yes'
 else 
 print 'no'
 select * from Students
 select * from Doctors

 create function dbo.getStudentsAvgAge()
 returns int
 as 
 begin
 return(select AVG(age) from Students)
 end

 create procedure usp_checkStudentsAndTeachersAvgAges
 @studentAvgAge int,
 @teacherAvgAge int
 as
 begin

 if @studentAvgAge>@teacherAvgAge
 print 'Student average is bigger'
 else
 print 'Student is not bigger'
 end
 declare @stuAvgage int =(select dbo.getStudentsAvgAge())
 declare @teachAvgAge int=(select dbo.getTeacherAvgAge())
 exec usp_checkStudentsAndTeachersAvgAges @stuAvgAge,@teachAvgAge

 declare @Counter int
 set @Counter=1
 while (@Counter<10)
 begin
 print 'The Counter value is= '+ Convert(Varchar,@Counter)
 set @Counter=@Counter + 1
 end

 Begin try
 select
 1/0 as Error;
 end try
 begin catch
 select
 ERROR_NUMBER() as ErorNumber,
 ERROR_MESSAGE() as ErrorMessage,
 ERROR_LINE() as Errorline,
 ERROR_PROCEDURE() AS ErrorProcedure,
 ERROR_STATE() as ErrorState,
 ERROR_SEVERITY() as ErrorSeverity
 end catch;