SET datestyle = "ISO, MDY";

copy Employees(emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
FROM 'C:\Users\jaypa\OneDrive\Documents\GitHub\UofT Bootcamp\sql_challenge\data\employees.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');


COPY Titles(title_id, title)
FROM 'C:\Users\jaypa\OneDrive\Documents\GitHub\UofT Bootcamp\sql_challenge\data\titles.csv'
DELIMITER ','
CSV HEADER;


COPY Departments(dept_no, dept_name)
FROM 'C:\Users\jaypa\OneDrive\Documents\GitHub\UofT Bootcamp\sql_challenge\data\departments.csv'
DELIMITER ','
CSV HEADER;


COPY Dept_Emp(emp_no, dept_no)
FROM 'C:\Users\jaypa\OneDrive\Documents\GitHub\UofT Bootcamp\sql_challenge\data\dept_emp.csv'
DELIMITER ','
CSV HEADER;


COPY Dept_Manager(dept_no, emp_no)
FROM 'C:\Users\jaypa\OneDrive\Documents\GitHub\UofT Bootcamp\sql_challenge\data\dept_manager.csv'
DELIMITER ','
CSV HEADER;


COPY Salaries(emp_no, salary)
FROM 'C:\Users\jaypa\OneDrive\Documents\GitHub\UofT Bootcamp\sql_challenge\data\salaries.csv'
DELIMITER ','
CSV HEADER;
