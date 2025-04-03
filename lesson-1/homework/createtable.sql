create database SchoolDB

create table Students(
StudentID int PRIMARY KEY,
Name varchar(50),
Age int
);


INSERT INTO Students values 
(1, 'John', 21),
(2, 'Alex', 20)


select * from Students
