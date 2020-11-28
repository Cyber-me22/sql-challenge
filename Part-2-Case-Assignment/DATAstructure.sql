CREATE TABLE Employees (
    employee_number integer   NOT NULL,
    employee_title_id VARCHAR   NOT NULL,
    employee_birthdate VARCHAR   NOT NULL,
    employee_firstname VARCHAR   NOT NULL,
    employee_lastname VARCHAR   NOT NULL,
    employee_gender VARCHAR   NOT NULL,
    employee_hiredate VARCHAR   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        employee_number)

);

CREATE TABLE Departments (
    department_number VARCHAR   NOT NULL,
    department_name VARCHAR   NOT NULL,
	 CONSTRAINT pk_Departments PRIMARY KEY (department_number)
	
);

CREATE TABLE Department_Employee (
    employee_number integer   NOT NULL,
    department_number VARCHAR   NOT NULL,
	FOREIGN KEY(employee_number)REFERENCES Employees (employee_number),
	FOREIGN KEY(department_number)REFERENCES Departments (department_number)
);

CREATE TABLE Department_Manager (
    department_number VARCHAR   NOT NULL,
    employee_number integer   NOT NULL,
	FOREIGN KEY(department_number)REFERENCES Departments (department_number),
	FOREIGN KEY(employee_number)REFERENCES Employees (employee_number)
);

CREATE TABLE Title (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL
	
);

CREATE TABLE Salary (
    employee_number integer   NOT NULL,
    salary integer   NOT NULL,
	FOREIGN KEY(employee_number)REFERENCES Employees (employee_number)
);




