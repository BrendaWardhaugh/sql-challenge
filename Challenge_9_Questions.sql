-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
RIGHT JOIN salary s
ON e.emp_no = s.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e where TO_DATE(hire_date ,'MM/DD/YYYY') between '1986-01-01' and '1986-12-31';

-- 3. List the manager of each department along with their department number, department name, 
--   employee number, last name, and first name.
SELECT m.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM managers m 
RIGHT JOIN employees e
ON m.emp_no = e.emp_no 
RIGHT JOIN departments d 
ON m.dept_no = d.dept_no;

-- 4. List the department number for each employee along with that employee’s employee number, 
--    last name, first name, and department name.
SELECT d_e.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM department_employees d_e
RIGHT JOIN employees e
ON d_e.emp_no = e.emp_no 
RIGHT JOIN departments d 
ON d_e.dept_no = d.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules 
--   and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees e where e.first_name = 'Hercules' and e.last_name like 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM department_employees d_e
RIGHT JOIN employees e
ON d_e.emp_no = e.emp_no 
RIGHT JOIN departments d 
ON d_e.dept_no = d.dept_no
where d.dept_name ='Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, 
--  first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM department_employees d_e
RIGHT JOIN employees e
ON d_e.emp_no = e.emp_no 
RIGHT JOIN departments d 
ON d_e.dept_no = d.dept_no
where d.dept_name in ('Sales', 'Development');

-- 8. List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).
Select count(last_name),last_name 
from employees
group by last_name
order by count desc;