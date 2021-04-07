CREATE TABLE titles (
title_id VARCHAR,
title VARCHAR NOT NULL,
PRIMARY KEY (title_id)
)
	
CREATE TABLE employees (
emp_no INT,
emp_title VARCHAR,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR(1),
hire_date DATE,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title) REFERENCES titles(title_id)
)


CREATE TABLE salaries (
emp_no INT,
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)


CREATE TABLE departments (
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
)


CREATE TABLE dept_employee (
emp_no INT,
dept_no VARCHAR,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)

CREATE TABLE dept_manager (
dept_no  VARCHAR,
emp_no  INT,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)

