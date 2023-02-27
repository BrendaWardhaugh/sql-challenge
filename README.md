# sql-challenge
Module 9 sql challenge


Please see the attached documents which include schema's, ERD, and the data rescourses.

This challenge was to demonstrate the creation of an ERD and to then use Postgres SQL to create tables, import the csv files into the corresponding tables and then manipulate the tables to show the information desired. 

## The following analysis has been conducted on the data

### List the employee number, last name, first name, sex, and salary of each employee
This required combining the employee table with the salary table.

![1](https://user-images.githubusercontent.com/120147552/221633149-5ba3363d-b615-47c1-9fb1-1873e55d6702.png)

### List the first name, last name, and hire date for the employees who were hired in 1986
This required accessing the employee table and searching through the hire date column to extract only employees hired in the requested year.

![2](https://user-images.githubusercontent.com/120147552/221638856-8653bb00-8bac-46e6-a01d-2cb8e5c19b75.png)

### List the manager of each department along with their department number, department name, employee number, last name, and first name
To access this information the managers, employee and departments table were mereged together and the requested information was then extracted. 

![3](https://user-images.githubusercontent.com/120147552/221640474-c28732be-eef0-4c04-88fd-920ab59d9743.png)

### List the department number for each employee along with that employee’s employee number, last name, first name, and department name
To gather this information, the department employees, employee, and department tables were joined together.

![4](https://user-images.githubusercontent.com/120147552/221641430-cd886af5-01de-4ae7-8aea-c118514a5991.png)

### List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
This required accessing the employee table and then searching through the first and last name columns to only select the employees whos first name was 'Hercules' and last name starts with the letter 'B'.

![5](https://user-images.githubusercontent.com/120147552/221642321-22f65cbd-6888-4fab-8a82-cdb16c3c545c.png)

### List each employee in the Sales department, including their employee number, last name, and first name
To find which employees worked only in the Sales department, the depatment employees, employees and department tables were joined and then filtered by only those that work in the Sales department.

![6](https://user-images.githubusercontent.com/120147552/221643104-bed8cf65-7826-423f-a575-73c8eb4946fe.png)

### List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
To find which employees worked only in the Sales department or Development department, the depatment employees, employees and department tables were joined and then filtered by only those that work in the Sales or Development departments.

![7](https://user-images.githubusercontent.com/120147552/221643979-e068c4ad-ef84-4efa-aeb0-83a38cde5d5e.png)

### List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
This required accessing the employee table and then using the count and group by function to search how many employees have the same last name. 

![8](https://user-images.githubusercontent.com/120147552/221644709-4b307015-64a6-4c53-b825-74a47d3a275f.png)
