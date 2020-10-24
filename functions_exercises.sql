/*
SELECT column FROM table ORDER BY column_name [ASC|DESC];
Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
Now reverse the sort order for both queries.
Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
 */

 USE employees;
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name;
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name, last_name;
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name, first_name;
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name DESC, first_name DESC;

USE employees;
SELECT CONCAT (first_name,' ', last_name) FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

USE employees;
SELECT * FROM employees WHERE hire_date LIKE '199%';

USE employees;
SELECT * FROM employees WHERE birth_date LIKE'%12-25';

USE employees;
/*For your query of employees born on Christmas and hired in the 90s,
  use datediff() to find how many days they have been working at the company
  (Hint: You will also need to use now() or curdate())
 */


SELECT *, DATEDIFF(CURDATE(), hire_date) AS 'tenure' FROM employees
    WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25'
    ORDER BY birth_date,hire_date DESC;


USE employees;
SELECT * FROM employees WHERE last_name LIKE '%q%';
SELECT * FROM employees WHERE (last_name LIKE '%q%') AND (last_name NOT LIKE '%qu%');