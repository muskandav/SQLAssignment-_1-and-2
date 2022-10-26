USE AssignmentOrders


--Get all row of the works_on table.
SELECT*
FROM dbo.Works_on;


--Get the employee numbers for all clerks
SELECT emp_no
FROM Works_on
WHERE Job = 'Clerk'



--Get the employee numbers for employees working in project p2, and having employee numbers smaller than 10000. 
SELECT emp_no
FROM Works_on
WHERE project_no = 'p2' and emp_no < 10000



--Get the employee numbers for all employees who didn’t enter their project in 1998.
SELECT distinct emp_no
FROM Works_on
WHERE YEAR(enter_date) != 1998 



--Get the employee numbers for all employees who have a  leading job( i.e., Analyst or Manager) in project p1
SELECT a.emp_no
FROM (
    SELECT *
	FROM Works_on
	WHERE Job = 'Analyst' OR Job = 'manager'
) a
WHERE project_no = 'p1'


--Get the enter dates for all employees in project p2 whose jobs have not been determined yet.
SELECT enter_date
FROM Works_on
WHERE project_no = 'p2' and Job IS NULL


--Get the employee numbers and last names of all employees whose first names contain two letter t’s.
SELECT emp_no, emp_lname
FROM Employee
WHERE emp_fname LIKE '%tt%'


--Get the employee numbers and first names of all employees whose last names have a letter o or a as the second character and end with the letters es.
SELECT emp_no, emp_fname
FROM Employee
WHERE ( Charindex('o', emp_lname) = 2 OR Charindex('a', emp_lname) = 2 ) AND emp_lname LIKE '%es'


--Get the employee numbers of all employees whose departments are located in Seattle.
SELECT emp_no
FROM Employee AS e INNER JOIN Department AS d ON e.dept = d.Dept_no
WHERE d.Location = 'Seattle'


--Find the last and first names of all employess who entered their projects on 04.01.1998
SELECT emp_fname, emp_lname
FROM Employee AS e INNER JOIN Works_on as w ON e.emp_no = w.emp_no
WHERE enter_date = '1998.1.4'


--Group all departments using their locations.
SELECT location, COUNT(*)
FROM Department
GROUP BY location


--Find the biggest employee number.
SELECT MAX(emp_no)
FROM Employee


--Get the jobs that are done by more than two employees.
SELECT Job
FROM Works_on
GROUP BY Job
HAVING COUNT(distinct emp_no) > 2


--Find the employee numbers of all employees who are clerks or work for department d3.
SELECT distinct e.emp_no
FROM Employee AS e INNER JOIN Works_on as w  ON e.emp_no = w.emp_no INNER JOIN Department as d ON e.dept = d.Dept_no
WHERE Job = 'Clerk' or dept = 'd3'