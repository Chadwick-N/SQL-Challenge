--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT * FROM "Dept_EMP";

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" AS e
INNER JOIN "Salaries" AS s
ON e.emp_no = s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date
LIKE '%%%%%/1986';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM "Employees" AS e
INNER JOIN "Dept_EMP" AS demp ON demp.emp_no = e.emp_no
INNER JOIN "Departments" AS d ON d.dept_no = demp.dept_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" AS e
INNER JOIN "Dept_EMP" demp ON demp.emp_no = e.emp_no
INNER JOIN "Departments" d ON d.dept_no = demp.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" AS e
INNER JOIN "Dept_EMP" AS demp ON demp.emp_no = e.emp_no
INNER JOIN "Departments" AS d ON d.dept_no = demp.dept_no
WHERE d.dept_name = 'Sales';


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" AS e
INNER JOIN "Dept_EMP" AS demp ON demp.emp_no = e.emp_no
INNER JOIN "Departments" AS d ON d.dept_no = demp.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(1) AS "LAST_NAME COUNT"
FROM employees
GROUP BY last_name
ORDER BY "LAST_NAME COUNT" DESC;




