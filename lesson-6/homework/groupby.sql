CREATE TABLE testM
(
    [A] [int] NULL,
    [B] [int] NULL,
    [C] [int] NULL,
    [D] [int] NULL
);
GO
 
--Insert Data
INSERT INTO testM (A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);

	select * from testM
	where not (A + B + C + D) = 0

	select * from testM
	where (A+B+C+D)>=1

--puzzle 2

𝘀𝘆𝗿𝗼𝘇𝗵𝗶𝗲, [10.03.2025 19:55]
INSERT INTO FruitCount(Name, Fruit) 
VALUES
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'APPLE'),
    ('Neeraj', 'ORANGE'),
    ('Neeraj', 'LICHI'),
    ('Neeraj', 'LICHI'),
    ('Neeraj', 'LICHI'),
    ('Isha', 'MANGO'),
    ('Isha', 'MANGO'),
    ('Isha', 'APPLE'),
    ('Isha', 'ORANGE'),
    ('Isha', 'LICHI'),
    ('Gopal', 'MANGO'),
    ('Gopal', 'MANGO'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'ORANGE'),
    ('Gopal', 'LICHI'),
    ('Mayank', 'MANGO'),
    ('Mayank', 'MANGO'),
    ('Mayank', 'APPLE'),
    ('Mayank', 'APPLE'),
    ('Mayank', 'ORANGE'),
    ('Mayank', 'LICHI');


CREATE TABLE FruitCount
(
    Name VARCHAR(20),
    Fruit VARCHAR(25)
);


INSERT INTO FruitCount(Name, Fruit) 
VALUES
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'APPLE'),
    ('Neeraj', 'ORANGE'),
    ('Neeraj', 'LICHI'),
    ('Neeraj', 'LICHI'),
    ('Neeraj', 'LICHI'),
    ('Isha', 'MANGO'),
    ('Isha', 'MANGO'),
    ('Isha', 'APPLE'),
    ('Isha', 'ORANGE'),
    ('Isha', 'LICHI'),
    ('Gopal', 'MANGO'),
    ('Gopal', 'MANGO'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'ORANGE'),
    ('Gopal', 'LICHI'),
    ('Mayank', 'MANGO'),
    ('Mayank', 'MANGO'),
    ('Mayank', 'APPLE'),
    ('Mayank', 'APPLE'),
    ('Mayank', 'ORANGE'),
    ('Mayank', 'LICHI');

	

	select 
	Name, 
	Fruit, 
	count(Fruit) count_fruit 
	from FruitCount
	group by Name, Fruit
	order by Fruit
	

	select Name, 
	count(case 
	    when Fruit = 'APPLE' THEN 1 END) AS APPLE,
    count(case 
	    when Fruit = 'LICHI' THEN 1 END) AS LICHI,
    count(case
	     when Fruit = 'MANGO' THEN 1 END) AS MANGO,
    count(CASE 
	     WHEN Fruit = 'ORANGE' THEN 1 END) AS ORANGE
    from FruitCount
	group by Name


	create table numbers (number int)

insert into numbers values
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),
(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),
(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),
(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),
(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),
(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100)

select number,
case
when number%15 = 0 then 'FizzBuzz'
when number%3 = 0 then 'Fizz'
when number%5 = 0 then 'Buzz'
else number
end as num_char 

from numbers
--Puzzle 1

CREATE TABLE InputTbl (col1 VARCHAR(1), col2 VARCHAR(1))

INSERT INTO InputTbl VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c',  'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');

select distinct
       case when col1 < col2 then col1 else col2 end as col1,
       case when col1 < col2 then col2 else col1 end as col2

from InputTbl

select min(col1) as col1, max(col2) as col2
from InputTbl
group by 
         case when col1 < col2 then col1 else col2 end,
		 case when col1 < col2 then col2 else  col1 end;




select * from InputTbl
group by col1, col2
having count(distinct(col1 + col2)) >= 1

--Puzzle 3
CREATE TABLE TESTDuplicateCount ( ID INT, EmpName VARCHAR(100), EmpDate DATETIME );

INSERT INTO TESTDuplicateCount(ID,EmpName,EmpDate) VALUES 
(1,'Pawan','2014-01-05'), 
(2,'Pawan','2014-03-05'), 
(3,'Pawan','2014-02-05'), 
(4,'Manisha','2014-07-05'), 
(5,'Sharlee','2014-09-05'), 
(6,'Barry','2014-02-05'), 
(7,'Jyoti','2014-04-05'), 
(8,'Jyoti','2014-05-05');

select EmpName, count(EmpName) as Occurrences from TESTDuplicateCount
group by EmpName
having COUNT(EmpName) > 1

--Puzzle 2

CREATE TABLE GroupbyMultipleColumns 
( ID INT, Typ VARCHAR(1), 
Value1 VARCHAR(1), 
Value2 VARCHAR(1), 
Value3 VARCHAR(1) );

INSERT INTO GroupbyMultipleColumns(ID, Typ, Value1, Value2, Value3) VALUES 
(1, 'I', 'a', 'b', ''), 
(2, 'O', 'a', 'd', 'f'), 
(3, 'I', 'd', 'b', ''), 
(4, 'O', 'g', 'l', ''), 
(5, 'I', 'z', 'g', 'a'), 
(6, 'I', 'z', 'g', 'a');

select Typ,
sum(case 
    when Value1 = 'a' then 1
	when Value2 = 'a' then 1
	when Value3 = 'a' then 1
	else 0 end) as count_a
from GroupbyMultipleColumns
group by Typ
