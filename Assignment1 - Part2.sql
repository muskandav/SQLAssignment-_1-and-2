Use AssignmentOrders

CREATE TABLE dbo.Department  
(  
     Dept_no varchar(5) NOT NULL  
    ,Dept_name varchar(40) NOT NULL  
    ,Location char(40) NULL    
);


CREATE TABLE dbo.Employee  
(  
     emp_no int NOT NULL  
    ,emp_fname char(15) NOT NULL  
    ,emp_lname char(15) NULL  
	,dept varchar(5) NOT NULL
);


CREATE TABLE dbo.Project  
(  
     project_no varchar(5) NOT NULL  
    ,project_name char(20) NOT NULL  
    ,Budget money NOT NULL    
);



CREATE TABLE dbo.Works_on
(
     emp_no int NOT NULL
	,project_no varchar(5) NOT NULL
	,Job char (15) NULL
	,enter_date date NOT NULL
);

INSERT INTO dbo.Department (Dept_no, Dept_name, Location)
VALUES ('d1','Research', 'Dallas');

INSERT INTO dbo.Department (Dept_no, Dept_name, Location)
VALUES ('d2','Accounting', 'Seattle');

INSERT INTO dbo.Department (Dept_no, Dept_name, Location)
VALUES ('d3','Marketing', 'Dallas');


INSERT INTO dbo.Employee (emp_no, emp_fname, emp_lname, dept)
VALUES (25348,'Matthew', 'Smith', 'd3');

INSERT INTO dbo.Employee (emp_no, emp_fname, emp_lname, dept)
VALUES (10102,'Ann', 'Jones', 'd3');

INSERT INTO dbo.Employee (emp_no, emp_fname, emp_lname, dept)
VALUES (18316,'John', 'Barrimo', 'd1');

INSERT INTO dbo.Employee (emp_no, emp_fname, emp_lname, dept)
VALUES (29346,'James', 'James', 'd2');


INSERT INTO dbo.Project(project_no, project_name, Budget)
VALUES ('p1','Apollo', 120000);

INSERT INTO dbo.Project(project_no, project_name, Budget)
VALUES ('p2','Gemini', 95000);

INSERT INTO dbo.Project(project_no, project_name, Budget)
VALUES ('p3','Mercury', 185600);



INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (10102,'p1', 'Analyst', '1997-10-01');

INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (10102,'p3', 'manager', '1999-01-1');

INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (25348,'p2', 'Clerk', '1998-2-15');

INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (18316,'p2', NULL, '1998-6-1');

INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (29346,'p2', NULL, '1997-12-15');

INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (2581,'p3', 'Analyst', '1998-10-15');

INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (9031,'p1', 'Manager', '1998-4-15');

INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (28559,'p1', NULL, '1998-8-1');

INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (28559,'p2', 'Clerk', '1992-2-1');

INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (9031,'p3', 'Clerk', '1997-11-15');

INSERT INTO dbo.Works_on(emp_no, project_no, Job, enter_date)
VALUES (29346,'p1', 'Clerk', '1998-1-4');