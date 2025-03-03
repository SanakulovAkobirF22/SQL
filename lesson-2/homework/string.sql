Create table Salesman(
salesman_id int ,    
name varchar(30),    
city varchar(30), 
commission float
);

insert into Salesman values 
 (5001, 'James Hoog', 'New York', 0.15),
 (5002, 'Nail Knite', 'Paris', 0.13),
 (5005, 'Pit Alex', 'London', 0.11),
 (5006, 'Mc Lyon', 'Paris', 0.14),
 (5007, 'Paul Adam', 'Rome', 0.13),
 (5003, 'Lauson Hen', 'San Jose', 0.12);

select * from Salesman
select name, city, commission from Salesman
where commission < 0.13


select name, city, commission from Salesman 
where city like '%a%' or city like '%r%'



create table Orderlar(
ord_no int,     
purch_amt float,   
ord_date date,
customer_id int,  
salesman_id int
);
insert into Orderlar values 
(70001,     150.5,     '2012-10-05',  3005,    5002),
(70009,     270.65,    '2012-09-10',  3001,    5005),
(70002,     65.26,     '2012-10-05',  3002,    5001),
(70004,     110.5,     '2012-08-17',  3009,    5003),
(70007,     948.5,     '2012-09-10',  3005,    5002),
(70005,     2400.6,    '2012-07-27',  3007,    5001),
(70008,     5760,      '2012-09-10',  3002,    5001),
(70010,     1983.43,   '2012-10-10',  3004,    5006),
(70003,     2480.4,    '2012-10-10',  3009,    5003);

select * from Orderlar 

select ord_no, ord_date, purch_amt from Orderlar 
where salesman_id = 5001;


create table Nobel_s (
YEAR int,
SUBJECT varchar(40),                   
WINNER  varchar(40),                                      
COUNTRY varchar(40),               
CATEGORY varchar(40)
);
insert into Nobel_s values 
(1970, 'Physics',             'Hannes Alfven',                              'Sweden',             'Scientist'),
(1970, 'Physics',             'Louis Neel',                                'France',              'Scientist'),
(1970, 'Chemistry',           'Luis Federico Leloir',                       'France',             'Scientist'),
(1970, 'Physiology',           'Ulf von Euler',                             'Sweden',              'Scientist'),
(1970, 'Physiology',             'Bernard Katz',                          'Germany',            'Scientist'),
(1970, 'Literature',             'Aleksandr Solzhenitsyn',                 'Russia',            'Linguist'),
(1970, 'Economics',              'Paul Samuelson',                         'USA',              'Economist'),
(1970, 'Physiology',              'Julius Axelrod',                         'USA',             'Scientist'),
(1971, 'Physics',                 'Dennis Gabor',                           'Hungary',          'Scientist'),
(1971, 'Chemistry',             'Gerhard Herzberg',                         'Germany',           'Scientist'),
(1971, 'Peace',                  'Willy Brandt',                            'Germany',           'Chancellor'),
(1971, 'Literature',             'Pablo Neruda',                             'Chile',             'Linguist'),
(1971, 'Economics',              'Simon Kuznets',                            'Russia',             'Economist'),
(1978, 'Peace',                   'Anwar al-Sadat',                          'Egypt',                  'President'),
(1978, 'Peace',                   'Menachem Begin',                          'Israel',                 'Prime Minister'),
(1987, 'Chemistry',               'Donald J. Cram',                           'USA',                 'Scientist'),
(1987, 'Chemistry',               'Jean-Marie Lehn',                          'France',               'Scientist'),
(1987, 'Physiology',              'Susumu Tonegawa',                           'Japan',                'Scientist'),
(1994, 'Economics',                'Reinhard Selten',                          'Germany',             'Economist'),
(1994,  'Peace',                    'Yitzhak Rabin',                           'Israel',               'Prime Minister'),
(1987, 'Physics',                   'Johannes Georg Bednorz',                   'Germany',                'Scientist'),
(1987, 'Literature',                'Joseph Brodsky',                            'Russia',                 'Linguist'),
(1987, 'Economics',                 'Robert Solow',                               'USA',                    'Economist'),
(1994, 'Literature',                'Kenzaburo Oe',                                  'Japan',                  'Linguist');

--From the following table, write a SQL query to find the Nobel Prize winner(s) for the year 1970. Return year, subject and winner. 
select * from Nobel_s
select YEAR, SUBJECT, WINNER from Nobel_s
where YEAR = 1970;

--From the following table, write a SQL query to find the Nobel Prize winner in ‘Literature’ for 1971. Return winner. 

select WINNER from Nobel_s
where SUBJECT = 'Literature' and YEAR = 1971;

--From the following table, write a SQL query to locate the Nobel Prize winner ‘Dennis Gabor'. Return year, subject. 
select YEAR, SUBJECT from Nobel_s
where WINNER = 'Dennis Gabor'
--From the following table, write a SQL query to find the Nobel Prize winners in the field of ‘Physics’ since 1950. Return winner.
select winner from Nobel_s
where SUBJECT = 'Physics' and YEAR > 1950

--From the following table, write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975. 
---Begin and end values are included. Return year, subject, winner, and country.
select YEAR, SUBJECT, WINNER, COUNTRY from Nobel_s
where SUBJECT = 'Chemistry'  and YEAR between 1965 and 1975

--Write a SQL query to display all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin. 
select * from Nobel_s
where YEAR > 1972
and WINNER IN ('Menachem Begin', 'Yitzhak Rabin')

--From the following table, write a SQL query to retrieve the details of the winners whose first names match with the string ‘Louis’. 
--Return year, subject, winner, country, and category.  
select YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY from Nobel_s
where WINNER like ('Louis_%')

--From the following table, write a SQL query that combines the winners in Physics, 1970 and in Economics, 1971. 
--Return year, subject, winner, country, and category

select * from Nobel_s
where (SUBJECT = 'Physics' and YEAR = 1970)

union 

(select * from Nobel_s where (SUBJECT = 'Economics' and YEAR = 1971));


--From the following table, write a SQL query to find the Nobel Prize winners in 1970 excluding the subjects of Physiology and Economics. 
--Return year, subject, winner, country, and category. 
select YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY from Nobel_s
where YEAR = 1970 and SUBJECT not in ('Physiology',  'Economics')

-- the following table, write a SQL query to combine the winners in 'Physiology' before 1971 and winners in 'Peace' on or after 1974. 
--Return year, subject, winner, country, and category.
select YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY from Nobel_s
 where (SUBJECT = 'Physiology' and YEAR < 1971)
 UNION
(SELECT * from Nobel_s where (SUBJECT = 'Peace' and YEAR > 1974)); 

--From the following table, write a SQL query to find the details of the Nobel Prize winner 'Johannes Georg Bednorz'. 
--Return year, subject, winner, country, and category.
select * from Nobel_s
where WINNER = 'Johannes Georg Bednorz'
--From the following table, write a SQL query to find Nobel Prize winners for the subject that does not begin with the letter 'P'. 
--Return year, subject, winner, country, and category. Order the result by year, descending and winner in ascending.  

select * from Nobel_s
where WINNER  not like ('P%')
order by YEAR desc, WINNER asc

--From the following table, write a SQL query to find the details of 1970 Nobel Prize winners. Order the results by subject, 
--ascending except for 'Chemistry' and ‘Economics’ which will come at the end of the result set. 
--Return year, subject, winner, country, and category
select YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY from Nobel_s 
where YEAR = 1970
order by case when SUBJECT in ('Chemistry', 'Economics') then 1 else 0 end, WINNER, SUBJECT;

create table item_s (
PRO_ID int, 
PRO_NAME varchar(30), 
PRO_PRICE float,
PRO_COM int
);
 
 insert into item_s values
    (101, 'Mother Board',                    3200.00,         15),
    (102, 'Key Board',                        450.00,         16),
    (103, 'ZIP drive',                        250.00,         14),
    (104, 'Speaker',                          550.00,         16),
    (105, 'Monitor',                         5000.00,         11),
    (106, 'DVD drive',                        900.00,         12),
    (107, 'CD drive',                         800.00,         12),
    (108, 'Printer',                         2600.00,         13),
    (109, 'Refill cartridge',                 350.00,         13),
    (110, 'Mouse',                            250.00,         12);

	select * from item_s
	/*From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 to Rs.600. 
	Begin and end values are included. Return pro_id, pro_name, pro_price, and pro_com.  */
	select PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM from item_s
	where PRO_PRICE between 200 and 600

	/* From the following table, write a SQL query to calculate 
	the average price for a manufacturer code of 16. Return avg.  */

	select avg(PRO_COM) from item_s
	where PRO_COM = 16 

	/* From the following table, write a SQL query to display the 
	pro_name as 'Item Name' and pro_priceas 'Price in Rs.' */
	select PRO_NAME as 'Item Name', PRO_PRICE as 'Price in Rs'  from item_s

	/*From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. 
	Order the result by product price in descending, then product name in ascending. 
	Return pro_name and pro_price.*/  

	select PRO_NAME, PRO_PRICE from item_s
	where PRO_PRICE >= 250
	order by PRO_PRICE desc, PRO_NAME;

	/* From the following table, write a SQL query to calculate average price of the items for each company. 
	Return average price and company code.*/
	select * from item_s

	select AVG(PRO_PRICE), PRO_COM from item_s
	group by PRO_COM

	/*From the following table, write a SQL query to find the cheapest item(s). Return pro_name and, pro_price.   */
	select PRO_NAME, PRO_PRICE from item_s
	where PRO_PRICE = (select min(PRO_PRICE) from item_s)

	create table emp_det(
	 EMP_IDNO int,
	 EMP_FNAME varchar(30),      
	 EMP_LNAME varchar(30),        
	 EMP_DEPT int
	);

	insert into emp_det values 
	(127323, 'Michale',         'Robbin',                  57),
   (526689, 'Carlos',          'Snares',                  63),
   (843795, 'Enric',           'Dosio',                   57),
   (328717, 'Jhon',            'Snares',                  63),
   (444527, 'Joseph',          'Dosni',                   47),
   (659831, 'Zanifer',         'Emily',                   47),
   (847674, 'Kuleswar',        'Sitaraman',               57),
   (748681, 'Henrey',          'Gabriel',                 47),
   (555935, 'Alex',            'Manuel',                  57),
   (539569, 'George',          'Mardy',                   27),
   (733843, 'Mario',           'Saule',                   63),
   (631548, 'Alan',            'Snappy',                  27),
   (839139, 'Maria',           'Foster',                  57);

   select * from  emp_det
   /* From the following table, write a SQL query to find the unique last name of all employees. Return emp_lname. */
   select distinct EMP_LNAME from emp_det

    From the following table, write a SQL query to find the details of employees whose last name is 'Snares'. 
   Return emp_idno, emp_fname, emp_lname, and emp_dept.
   select * from emp_det
   where EMP_LNAME = 'Snares' 

   /* From the following table, write a SQL query to retrieve the details of the employees who work in the department 57. 
   Return emp_idno, emp_fname, emp_lname and emp_dept.. */
    select * from emp_det
	where EMP_DEPT = 57;

















