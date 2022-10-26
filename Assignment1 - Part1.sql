CREATE DATABASE AssignmentOrders
Go
Use AssignmentOrders
Go

CREATE TABLE dbo.Customers  
(  
     CustomerId char(5) NOT NULL  
    ,CompanyName varchar(40) NOT NULL  
    ,contactName char(30) NULL  
    ,addr varchar(60) NULL  
    ,City char(15) NULL  
    ,Phone char(24) NULL  
    ,Fax char(24)  NULL   
);

CREATE TABLE dbo.Orders  
(  
     OrderId int NOT NULL  
    ,customerId char(5) NOT NULL  
    ,orderDate datetime NULL  
    ,shippedDate datetime NULL  
    ,freight money NULL  
    ,shipName varchar(40) NULL  
    ,shipAddress varchar(60)  NULL
	,Quantity int NULL
);
SELECT * FROM Orders;
SELECT * FROM Customers;

ALTER TABLE dbo.Orders
  ADD ShipRegion int NULL;


 ALTER TABLE dbo.Orders ALTER COLUMN ShipRegion char(8) NULL;

 ALTER TABLE dbo.Orders DROP COLUMN ShipRegion;

 INSERT INTO dbo.Orders (OrderId, customerId, orderDate, shippedDate, freight, shipName, shipAddress, Quantity)
 VALUES ( 10, 'ord01', getdate(), getdate(), 100.0, 'Windstar', 'Ocean' ,1)

 ALTER TABLE dbo.Orders ADD DEFAULT getdate() FOR orderDate;

 EXEC sp_rename 'Customers.City', 'Town', 'COLUMN'