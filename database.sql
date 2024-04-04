create Database CourseDatabase2
use CourseDatabase2

create Table Countries(
[Id] int primary key identity (1,1),
[Name] nvarchar (50)
)
create table Cities(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[CountryId] int,
Foreign key ([CountryId]) references Countries([Id])

)
create table Students(
[Id] int primary key identity (1,10),
[Name] nvarchar(50),
[Surname] nvarchar(100),
[Address] nvarchar (255),
[Age] int,
[Email] nvarchar (255),
[CityId] int,
Foreign key ([CityId]) references Cities([Id])
)
insert into Countries([Name])
values ('USA'),
       ('UK'),
	   ('Germany')
select * from Countries

insert into Cities([Name],[CountryId])
values ('New York',1),
       ('London',2),
	   ('Berlin',3)

select * from Cities
select Cities.[Name] as 'City name',Countries.[Name] as 'Country name'
from Cities
inner Join Countries on Cities.[CountryId]=Countries.[Id]


 insert into Students([Name],[Surname],[Address],[Age],[Email],[CityId])
 VALUES ('ZIKO','Ashirov','Manhetton',39,'ziko@gmail.com', 1),
         ('BAHA','Aliyev','15th street',37,'baha@gmail.com',2),
		 ('Ayka','Agayeva','Bigben',21,'ayka@gmail.com',3)

select * from Students
truncate table Students

create table Groups(
[Id] int primary key identity (1,1),
[Name] nvarchar (50),
[Capacity] int
)
create table StudentGroups(
[GroupId] int,
[StudentId] int,
foreign key ([GroupId]) references Groups([Id]),
foreign key ([StudentId]) references Students([Id])
)
create table Teachers(
[Id] int primary key identity (1,1),
[Fullname] nvarchar (100),
[Salary] decimal ,
[Address] nvarchar (100),
[Email] nvarchar (255)
)
create table GroupTeachers(
[GroupId] int,
[TeacherId] int,
foreign key ([GroupId]) references Groups([Id]),
foreign key ([TeacherId]) references Teachers([Id])
)
INSERT INTO Teachers ([FullName], [Address], [Email], [Salary])
VALUES ('Cavid bashirov', '123 Street', 'cavid@gmail.com', 50000),
       ('Ahad Veliyev', 'Street', 'ahad@gmail.com.com', 60000);
select * from Teachers

create table Rooms(
[Id] int primary key identity(1,1),
[Name] nvarchar (50),
[Capacity] int
)
alter table Groups
add [EducationId] int

select * from Groups

drop table Groups

ALTER TABLE Groups
DROP COLUMN [RoomID]
 create table Educations(
 [Id] int primary key identity (1,1),
 [Name] nvarchar (50)
 )
 select * from Groups

 create table Roles(
 [Id] int primary key identity (1,1),
 [Name] nvarchar (50)

 )

 create table StaffMembers(
 [Id] int primary key identity (1,1),

 [Fullname] nvarchar (100),
[Salary] decimal ,
[Age] nvarchar (100),
[CityId] int
foreign key ([CityId]) references Cities([Id])
 )
 CREATE TABLE RoleStaffMembers (
    RoleID INT,
    StaffID INT,
    FOREIGN KEY (RoleID) REFERENCES Roles([ID]),
    FOREIGN KEY (StaffID) REFERENCES StaffMembers([ID]),
    PRIMARY KEY (RoleID, StaffID)
);
create table Departments(
[Id] int primary key identity (1,1),
[Name] nvarchar (50)
)
ALTER TABLE Roles
ADD [DepartmentID] INT

