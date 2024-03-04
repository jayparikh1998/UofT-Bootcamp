
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(1),
    hire_date DATE
);


CREATE TABLE Titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(255)
);


CREATE TABLE Departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(255)
);


CREATE TABLE Dept_Emp (
    emp_no INT,
    dept_no VARCHAR(10),
    PRIMARY KEY(emp_no, dept_no),
    FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY(dept_no) REFERENCES Departments(dept_no)
);


CREATE TABLE Dept_Manager (
    emp_no INT,
    dept_no VARCHAR(10),
    PRIMARY KEY(emp_no, dept_no),
    FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY(dept_no) REFERENCES Departments(dept_no)
);


CREATE TABLE Salaries (
    emp_no INT,
    salary INT,
    FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);
