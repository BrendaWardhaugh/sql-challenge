-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Departments (
    Dept_no VARCHAR(4)   NOT NULL,
    Dept_name VARCHAR(20)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_no
     )
);

CREATE TABLE Department_Employees (
    Emp_no INTEGER   NOT NULL,
    Dept_no VARCHAR(4)   NOT NULL,
    CONSTRAINT pk_Department_Employees PRIMARY KEY (
        Emp_no
     )
);

CREATE TABLE Department_Manager (
    Dept_no VARCHAR(4)   NOT NULL,
    Emp_no INTEGER   NOT NULL
);

CREATE TABLE Employees (
    Emp_no INTEGER   NOT NULL,
    Emp_title_id VARCHAR(5)   NOT NULL,
    Birht_date DATE   NOT NULL,
    First_name VARCHAR(20)   NOT NULL,
    Last_name VARCHAR(20)   NOT NULL,
    Sex VARCHAR(1)   NOT NULL,
    Hire_date DATE   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_no
     )
);

CREATE TABLE Salaries (
    Emp_no INTEGER   NOT NULL,
    Salary INTEGER   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        Emp_no
     )
);

CREATE TABLE Titles (
    Title_ID VARCHAR(5)   NOT NULL,
    Title VARCHAR(20)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        Title_ID
     )
);

ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_Emp_no FOREIGN KEY(Emp_no)
REFERENCES Employees (Emp_no);

ALTER TABLE Department_Employees ADD CONSTRAINT fk_Department_Employees_Dept_no FOREIGN KEY(Dept_no)
REFERENCES Departments (Dept_no);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_Dept_no FOREIGN KEY(Dept_no)
REFERENCES Departments (Dept_no);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_Emp_no FOREIGN KEY(Emp_no)
REFERENCES Employees (Emp_no);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_Emp_title_id FOREIGN KEY(Emp_title_id)
REFERENCES Titles (Title_ID);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_no FOREIGN KEY(Emp_no)
REFERENCES Employees (Emp_no);

