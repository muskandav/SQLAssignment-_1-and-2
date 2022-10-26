--Create: a.	Equijoin b.	Natural join c.	Cartesian product for the project and works_on tables

SELECT *
FROM Project, Works_on
WHERE Project.project_no = Works_on.project_no

SELECT *
FROM Project NATURAL JOIN Works_on

SELECT * 
FROM Project CROSS JOIN Works_on



--Get the employee numbers and job titles of all employees working on project Gemini

SELECT emp_no, Job
FROM Project AS p INNER JOIN Works_on as w ON p.project_no = w.project_no
WHERE p.project_name = 'Gemini'


--Get the first and last names of all employees that work for departments Research or Accounting.

SELECT emp_fname, emp_lname
FROM Employee as e INNER JOIN Works_on as w ON e.emp_no = w.emp_no INNER JOIN Department as d on d.Dept_no = e.dept
WHERE d.Dept_name = 'Research' OR d.Dept_name = 'Accounting'


--Get the enter dates of all clerks that belong to the department d1.

SELECT enter_date 
FROM Employee as e INNER JOIN Works_on as w ON e.emp_no = w.emp_no
WHERE w.Job = 'Clerk' and e.dept = 'd1'


--Get the names of projects on which two or more clerks are working.
SELECT p.project_name
FROM Project as p INNER JOIN Works_on as w ON p.project_no = w.project_no
WHERE w.Job = 'Clerk'
GROUP BY p.project_name
HAVING COUNT(distinct emp_no) > 1


--Get the first and last names of the employees that are manager and that work on project Mercury.
SELECT e.emp_fname, e.emp_lname
FROM Employee as e INNER JOIN Works_on as w ON e.emp_no = w.emp_no INNER JOIN Project as p on w.project_no = p.project_no
WHERE w.Job = 'Manager' AND p.project_name ='Mercury'




--Get the employee numbers of all employees belonging to the Marketing department. Find two equivalent solutions using: a.	the JOIN operator b.	The correlated subquery.
SELECT e.emp_no
FROM Employee as e INNER JOIN Department as d ON e.dept = d.Dept_no
WHERE d.Dept_name = 'Marketing'

SELECT e.emp_no
FROM Employee e 
WHERE e.dept =(
  SELECT d.Dept_no
  FROM Department d
  WHERE d.Dept_name = 'Marketing'
)
