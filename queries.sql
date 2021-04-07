--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
LIMIT 10


--List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986'


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT employees.first_name, employees.last_name, employees.emp_no, departments.dept_no, departments.dept_name
FROM employees, departments, dept_manager
WHERE dept_manager.emp_no = employees.emp_no AND dept_manager.dept_no = departments.dept_no


--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e, departments d, dept_employee
WHERE dept_employee.emp_no = e.emp_no AND dept_employee.dept_no = d.dept_no


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules' and last_name LIKE 'B%'


--List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e, departments d, dept_employee
WHERE
	d.dept_name = 'Sales'
	AND e.emp_no = dept_employee.emp_no
	AND d.dept_no = dept_employee.dept_no


--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e, departments d, dept_employee
WHERE
	(d.dept_name = 'Sales'
	AND e.emp_no = dept_employee.emp_no
	AND d.dept_no = dept_employee.dept_no)
	OR
	(d.dept_name = 'Development'
	AND e.emp_no = dept_employee.emp_no
	AND d.dept_no = dept_employee.dept_no)


--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT employees.last_name, COUNT(employees.last_name) AS "Name Share Count"
FROM employees
GROUP BY employees.last_name
ORDER BY "Name Share Count" DESC


-- Boss has told me to search my employee number!
SELECT employees.last_name, employees.first_name, employees.emp_no
FROM employees
WHERE emp_no = 499942

-- Very funny

	
