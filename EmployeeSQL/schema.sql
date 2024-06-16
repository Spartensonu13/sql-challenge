DROP TABLE IF EXISTS TITLES;
CREATE TABLE TITLE(
	TITLE_ID VARCHAR(255),
	TITLE VARCHAR(255),
	PRIMARY KEY(TITLE_ID)
);

CREATE TABLE EMPLOYEES(
	emp_no INT  NOT NULL,
    emp_title_id VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(255)  NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(10)  NOT NULL,
    hire_date DATE NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES Title(TITLE_ID),
	PRIMARY KEY (emp_no)
);

CREATE TABLE departments(
	dept_no VARCHAR(255) NOT NULL,
	dept_name Varchar(255) NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(255) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
	
);


CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
	
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES EMPLOYEES (emp_no),
	PRIMARY KEY (emp_no)
);
