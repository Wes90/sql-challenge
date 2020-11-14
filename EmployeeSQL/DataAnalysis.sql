Create Table dept_emp(
	emp_no int,
	dept_no varchar
);
Create Table dept_manager(
	dept_no varchar,
	emp_no int
);
Create Table departments(
	dept_no varchar,
	dept_name varchar 
);
Create Table Employees(
	emp_no int,
	emp_title varchar,
	birth_date int,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
);
Create Table Salaries(
	emp_no int PRIMARY KEY,
	salary int
);
Create Table Titles(
	title_id int PRIMARY KEY,
	title varchar
);

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
From employees 
Left Join salaries 
ON e.emp_no = s.emp_no;


Select first_name, last_name, hire_date
From employees
Where hire_date Between '1986-01-1' and '1986-12-31';


Select d.dept_no, de.dept_name, d.emp_no, e.last_name, e.first_name
From dept_emp as d 
Left Join employees as e
ON d.emp_no = e.emp_no
Left Join departments as de 
ON de.dept_no = d.dept_no;


Select e.emp_no, e.last_name, e.first_name, de.dept_name
From employees as e
Left Join dept_emp as d
ON d.emp_no = e.emp_no
Left Join departments as de
ON de.dept_no = d.dept_no;


Select first_name, last_name, sex
From employees as e 
Where e.first_name = 'Hercules' and e.last_name Like 'B%';


Select e.emp_no, last_name, first_name, dept_name 
From employees as e
Left Join dept_emp as d
ON d.emp_no = e.emp_no
Left Join departments as de
ON de.dept_no = d.dept_no
Where de.dept_no = 'd007';


Select Count (last_name) as "freq_names"
From employees;
Where



Select * 
From departments

Select * 
From dept_manager

Select * 
From employees
