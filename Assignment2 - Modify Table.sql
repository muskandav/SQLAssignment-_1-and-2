--1.	Insert the data of a new employee called Julia Long, whose employee number is 1111. Her department number is not known yet.
INSERT INTO dbo.Employee (emp_no, emp_fname, emp_lname, dept)
VALUES (1111,'Julia', 'Long', NULL);


--2.	Create a new table called emp_d1_d2 with all employees who work for department d1 or d1, and load the corresponding rows from the employee table.
CREATE TABLE dbo.emp_d1_d2
(  
     emp_no int NOT NULL  
    ,emp_fname char(15) NOT NULL  
    ,emp_lname char(15) NULL  
	,dept varchar(5) NULL
);

INSERT INTO emp_d1_d2
SELECT *
FROM Employee
WHERE dept = 'd1' OR dept = 'd2'



--3.	Modify the job of all the employees in project p1 who are managers. They have to work as clerks from now on.
UPDATE Works_on
SET Job = 'Clerk'
WHERE Job = 'Manager' and project_no = 'p1'


--4.	The budgets of all projects are no longer determined. Assign all budgets the NULL value.
--UPDATE Project
--SET Budget = NULL


SELECT * FROM Project
--5.	Increase the budget of the project where the manager has the employee number 10102. The increase is 10%.
UPDATE Project
SET Project.Budget = Project.Budget * 1.1
FROM Project INNER JOIN Works_on ON project.project_no = Works_on.project_no
WHERE Works_on.Job = 'Manager' AND Works_on.emp_no = 10102


--6.	Change the enter date for the projects for those employees who work in project p1 and belong to the department Sales. The new date is 12.12.1998.
UPDATE Works_on
SET Works_on.enter_date = '12.12.1998'
FROM Works_on INNER JOIN Employee ON Works_on.emp_no = Employee.emp_no INNER JOIN Department ON Employee.dept = Department.Dept_no
WHERE Works_on.project_no = 'p1' and Department.Dept_name = 'Sales'


