/*
Find all the employees with the same hire date as employee 101010 using a subquery.
69 Rows

Find all the titles held by all employees with the first name Aamod.
314 total titles, 6 unique titles

Find all the current department managers that are female.
 */

SELECT * FROM employees WHERE hire_date IN (
    SELECT hire_date FROM employees WHERE emp_no=101010);
/*select all from the employees table where the hire date matches the hire date of employee number 101010*/

 USE employees;
 SELECT titles.title FROM titles WHERE emp_no IN (
     SELECT emp_no FROM employees WHERE first_name = 'Aamod');
/* select the title from the titles table when the empployee number from employees matches the first_name of Aamod*/

SELECT first_name,last_name FROM employees WHERE gender='F' AND emp_no IN (
    SELECT emp_no FROM dept_manager WHERE gender='F' AND to_date>CURDATE());