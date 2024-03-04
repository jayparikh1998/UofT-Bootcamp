-- 1. Employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees e
JOIN Salaries s ON e.emp_no = s.emp_no;

-- 2. First name, last name, and hire date for employees hired in 1986.
SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- 3. Manager of each department with department number, name, employee number, last name, and first name.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM Dept_Manager dm
JOIN Departments d ON dm.dept_no = d.dept_no
JOIN Employees e ON dm.emp_no = e.emp_no;

-- 4. Department number for each employee with employee number, last name, first name, and department name.
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_Emp de
JOIN Employees e ON de.emp_no = e.emp_no
JOIN Departments d ON de.dept_no = d.dept_no;

-- 5. First name, last name, and sex of each employee named Hercules with last name starting with B.
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. Each employee in the Sales department with employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
FROM Employees e
JOIN Dept_Emp de ON e.emp_no = de.emp_no
JOIN Departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7. Each employee in the Sales and Development departments with employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees e
JOIN Dept_Emp de ON e.emp_no = de.emp_no
JOIN Departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- 8. Frequency counts, in descending order, of all employee last names.
SELECT last_name, COUNT(*) as frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;