--Data Analysis

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT * 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31' 
ORDER BY hire_date 

SELECT dept_manager.dept_no, departments.dept_name, 
employees.first_name,employees.last_name, dept_manager.emp_no,dept_manager.from_date, dept_manager.to_date
FROM dept_manager
JOIN departments
ON dept_manager.dept_no=departments.dept_no
JOIN employees
ON employees.emp_no=dept_manager.emp_no
ORDER BY dept_manager.dept_no

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no=departments.dept_no
ORDER BY employees.emp_no;

SELECT * 
FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name='Sales';

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name='Sales' OR departments.dept_name='Development';

SELECT last_name, COUNT(last_name) AS Total
FROM employees
GROUP BY last_name
ORDER BY Total DESC;



