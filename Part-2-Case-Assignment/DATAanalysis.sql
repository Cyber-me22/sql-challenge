--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
	Employees.employee_number,
	Employees.employee_lastname,
	Employees.employee_firstname,
	Employees.employee_gender,
	Salary.salary
FROM Employees
INNER JOIN Salary 
ON Salary.employee_number = Employees.employee_number;
--List first name, last name, and hire date for employees who were hired in 1986.
SELECT 
	Employees.employee_firstname,
	Employees.employee_lastname,
	Employees.employee_hiredate
FROM Employees
WHERE 
	Employees.employee_hiredate LIKE '%1986%';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT 
	e.employee_firstname,
	e.employee_lastname,
	e.employee_number,
	d.department_number,
FROM Employees e
	Inner Join department_manager dm
	on e.employee_number = dm.employee_number 
	Inner Join departments d
	on dm.department_number = d.department_number
	
--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT 
	e.employee_firstname,
	e.employee_lastname,
	e.employee_number,
	d.department_name
	
FROM department_employee de
 
	Inner Join employees e 
	on de.employee_number = e.employee_number
	Inner Join departments d
	on de.department_number = d.department_number
	order by employee_number;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	employee_firstname, 
	employee_lastname, 
	employee_gender
FROM 
	employees 
WHERE 
	employee_firstname = 'Hercules'
	AND employee_lastname LIKE 'B%'
--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
	e.employee_firstname,
	e.employee_lastname,
	e.employee_number,
	d.department_name
FROM employees e
	Inner Join department_employee de
	on e.employee_number = de.employee_number 
	Inner Join departments d
	on de.department_number = d.department_number 
WHERE 
	department_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
	e.employee_firstname,
	e.employee_lastname,
	e.employee_number,
	d.department_name
FROM employees e
	Inner Join department_employee de
	on e.employee_number = de.employee_number 
	Inner Join departments d
	on de.department_number = d.department_number 
WHERE 
	department_name IN ('Sales', 'Development');

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT employee_lastname,
	COUNT(employee_number)
FROM EMPLOYEES
GROUP BY employee_lastname
ORDER BY COUNT(employee_number)
DESC;
	
	