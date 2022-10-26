--7.	Create a stored procedure to insert data into department and Employee table.

CREATE PROCEDURE InsertIntoDepartmentEmployee (@emp_no int 
                                             ,@emp_fname char(15) 
                                             ,@emp_lname char(15)  
	                                         ,@dept varchar(5)
											 ,@Dept_name varchar(40)
											 ,@Location char(40))
AS
  BEGIN
            INSERT INTO Employee
                        (emp_no, emp_fname, emp_lname, dept)
            VALUES     (@emp_no, @emp_fname, @emp_lname, @dept)

			INSERT INTO Department 
			            (Dept_no, Dept_name, Location)
		    VALUES      (@dept, @Dept_name, @Location)
        END