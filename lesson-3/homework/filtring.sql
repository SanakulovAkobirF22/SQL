/* . From the following table, write a SQL query to find those employees whose salaries are less than 6000. 
 Return full name (first and last name), and salary.*/

 select * from emp_loyees1
 where SALARY < 6000;

 /* From the following table, write a SQL query to find those employees whose salary is higher than 8000. 
 Return first name, last name and department number and salary. */

 select * from emp_loyees1
 where SALARY > 8000

 /* From the following table, write a SQL query to find those employees whose last name is "McEwen". 
 Return first name, last name and department ID. */
 select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from emp_loyees1
 where LAST_NAME = 'McEwen'

 /*  From the following table, write a SQL query to identify employees who do not have a department number. 
 Return employee_id, first_name, last_name, email, phone_number, 
 hire_date, job_id, salary,commission_pct, manager_id and department_id.*/

 select * from emp_loyees1
 where DEPARTMENT_ID is null;
 
 
 
 /*. From the following table, write a SQL query 
 to find the details of 'Marketing' department. Return all fields. */

 create table departaments (
 DEPARTMENT_ID int, 
 DEPARTMENT_NAME varchar(30),
 MANAGER_ID int, 
 LOCATION_ID int
 );

 insert into departaments values
(            10, trim(' Administration     '),          200,         1700), 
(            20, trim(' Marketing          '),          201,         1800), 
(            30, trim(' Purchasing         '),          114,         1700), 
(            40, trim(' Human Resources    '),          203,         2400), 
(            50, trim(' Shipping           '),          121,         1500), 
(            60, trim(' IT                 '),          103,         1400), 
(            70, trim(' Public Relations   '),          204,         2700), 
(            80, trim(' Sales              '),          145,         2500), 
(            90, trim(' Executive          '),          100,         1700), 
(           100, trim(' Finance            '),          108,         1700), 
(           110, trim(' Accounting         '),          205,         1700), 
(           120, trim(' Treasury           '),            0,         1700), 
(           130, trim(' Corporate Tax      '),            0,         1700), 
(           140, trim(' Control And Credit '),            0,         1700), 
(           150, trim(' Shareholder Services'),           0,         1700), 
(           160, trim(' Benefits           '),            0,         1700), 
(           170, trim(' Manufacturing      '),            0,         1700), 
(           180, trim(' Construction       '),            0,         1700), 
(           190, trim(' Contracting        '),            0,         1700), 
(           200, trim(' Operations         '),            0,         1700), 
(           210, trim(' IT Support         '),            0,         1700), 
(           220, trim(' NOC                '),            0,         1700), 
(           230, trim(' IT Helpdesk        '),            0,         1700), 
(           240, trim(' Government Sales   '),            0,         1700), 
(           250, trim(' Retail Sales       '),            0,         1700), 
(           260, trim(' Recruiting         '),            0,         1700), 
(           270, trim(' Payroll            '),            0,         1700); 
 
 select * from departaments
 where DEPARTMENT_NAME = 'Marketing'
 /*  From the following table, write a SQL query to find those employees whose first name does not contain the letter ‘M’. Sort the result-set in ascending order by department ID. 
 Return full name (first and last name together), hire_date, salary and department_id. */
 
 select FIRST_NAME + ' ' + LAST_NAME as full_name, HIRE_DATE, SALARY, DEPARTMENT_ID from emp_loyees1
 where FIRST_NAME not like 'M%'
 order by DEPARTMENT_ID

 /* From the following table, write a SQL query to find those employees who earn between 8000 and 12000 
 (Begin and end values are included.) and get some commission. 
 These employees joined before ‘1987-06-05’ and were not included in the 
 department numbers 40, 120 and 70. Return all fields. */

 select * from emp_loyees1
 where salary between 8000 and 12000 and HIRE_DATE >'1987-06-05' and DEPARTMENT_ID not in (40, 120, 70)


 /*From the following table, write a SQL query to find those employees who do not earn any commission. 
 Return full name (first and last name), and salary. */
 select * from emp_loyees1
 where  COMMISSION_PCT is Null

 /* From the following table, write a SQL query to find the employees whose salary is in the range 9000,17000 (Begin and end values are included). 
 Return full name, contact details and salary.*/
 select FIRST_NAME + ' ' + LAST_NAME as full_name, PHONE_NUMBER + ' - ' + EMAIL as contact_deatils, salary remurayion  from emp_loyees1
  where SALARY between 9000 and 17000

  /* From the following table, write a SQL query to find the employees whose first name ends with the letter ‘m’. 
  Return the first and last name, and salary. */

  select FIRST_NAME, LAST_NAME, SALARY from emp_loyees1
  where FIRST_NAME like '%_m'

  /*From the following table, write a SQL query to find those employees
  whose salaries are not between 7000 and 15000 (Begin and end values are included). 
  Sort the result-set in ascending order by the full name (first and last). 
  Return full name and salary. */

  select FIRST_NAME + ' ' + LAST_NAME as full_name, salary from emp_loyees1

  where SALARY not between 7000 and 15000
  order by full_name

  /* From the following table, write a SQL query to find those employees 
  who were hired between November 5th, 2007 and July 5th, 2009. 
  Return full name (first and last), job id and hire date. */

  select FIRST_NAME + ' ' + LAST_NAME as full_name, JOB_ID, HIRE_DATE from emp_loyees1
  where HIRE_DATE between '2007-11-05' and '2009-07-05'

  /*  From the following table, write a SQL query to find those employees who work either in department 70 or 90. 
  Return full name (first and last name), department id.*/

  select FIRST_NAME + ' ' + LAST_NAME as full_name, DEPARTMENT_ID from emp_loyees1
  where DEPARTMENT_ID in (70, 90)

  /*From the following table, write a SQL query to find those employees who work under a manager. 
  Return full name (first and last name), salary, and manager ID. */
  select FIRST_NAME + ' ' + LAST_NAME as full_name, SALARY, MANAGER_ID from emp_loyees1

  /* From the following table, write a SQL query to find the employees 
  who were hired before June 21st, 2002. Return all fields. */

  select * from emp_loyees1
  where HIRE_DATE < '2002-06-21';

  /*  From the following table, write a SQL query to find the employees whose managers hold the ID 120, 103, or 145. 
  Return first name, last name, email, salary and manager ID.*/

  select * from emp_loyees1
  where MANAGER_ID in (120, 103, 145);

  /*From the following table, write a SQL query to find employees whose first names contain the letters D, S, or N. 
  Sort the result-set in descending order by salary. Return all fields. */
  select * from emp_loyees1
  where FIRST_NAME like '%D%' or FIRST_NAME like '%S%' or FIRST_NAME like '%N%'
  order by SALARY desc;

  /* From the following table, write a SQL query to find those employees who earn above 11000 or the 
  seventh character in their phone number is 3. Sort the result-set in descending order by first name.
  Return full name (first name and last name), hire date, commission percentage, 
  email, and telephone separated by '-', and salary.*/

  select FIRST_NAME + ' ' + LAST_NAME as full_name, HIRE_DATE, COMMISSION_PCT, EMAIL + '-' + PHONE_NUMBER, SALARY from emp_loyees1

  where SALARY > 11000 or PHONE_NUMBER like '______3%'
  order by FIRST_NAME desc

  /* From the following table, write a SQL query to find those 
  employees whose first name contains a character 's' in the third position.
  Return first name, last name and department id. */

  select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from emp_loyees1

  where FIRST_NAME like '__s%'

  /* From the following table, write a SQL query to find those employees work in the 
  departments that are not part of the 
  department 50 or 30 or 80. Return employee_id, first_name,job_id, department_id. */

  select EMPLOYEE_ID, FIRST_NAME, job_id, DEPARTMENT_ID from emp_loyees1
  where DEPARTMENT_ID not in (50, 30, 80)
 
 /* From the following table, write a SQL query to find 
 the employees whose department numbers are 
 included in 30, 40, or 90. 
 Return employee id, first name, job id, department id. */

 select EMPLOYEE_ID, FIRST_NAME, job_id, DEPARTMENT_ID from emp_loyees1
  where DEPARTMENT_ID  in (30, 40, 90)

/* From the following table, write a SQL query to find those employees 
who worked more than two jobs in the past. 
Return employee id. */
