CREATE DATABASE information;
CREATE TABLE Employees (EmployeeID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Email VARCHAR(100),PhoneNumber VARCHAR(20),
DepartmentID INT,Salary BIGINT,ManagerID BIGINT);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, DepartmentID, Salary, ManagerID)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '555-1234', 101, 75000, 1001),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', 102, 80000, 1002),
(3, 'Emily', 'Johnson', 'emily.johnson@example.com', '555-8765', 101, 72000, 1001),
(4, 'Michael', 'Brown', 'michael.brown@example.com', '555-4321', 103, 85000, 1003),
(5, 'Alice', 'Davis', 'alice.davis@example.com', '555-3456', 102, 78000, 1002);

SELECT * FROM Employees;
DESC Employees;

CREATE TABLE Departments (DepartmentID INT PRIMARY KEY,DepartmentName VARCHAR(100),Location VARCHAR(100),ManagerName VARCHAR(100),
ContactEmail VARCHAR(100),Budget BIGINT,Headcount BIGINT);

INSERT INTO Departments (DepartmentID, DepartmentName, Location, ManagerName, ContactEmail, Budget, Headcount)
VALUES
(101, 'Human Resources', 'New York', 'David Wilson', 'david.wilson@example.com', 500000, 15),
(102, 'Finance', 'Chicago', 'Sarah Miller', 'sarah.miller@example.com', 750000, 20),
(103, 'IT', 'San Francisco', 'James Taylor', 'james.taylor@example.com', 600000, 25);
SELECT * FROM Departments;
DESC Departments;

CREATE TABLE Projects (ProjectID INT PRIMARY KEY,ProjectName VARCHAR(100),StartDate VARCHAR(10), EndDate VARCHAR(10),
ClientName VARCHAR(100),ProjectCost BIGINT,AssignedTeamID BIGINT);

INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, ClientName, ProjectCost, AssignedTeamID)
VALUES
(1001, 'Website Redesign', '2024-01-15', '2024-06-15', 'TechCorp', 150000, 1001),
(1002, 'Marketing Campaign', '2024-02-01', '2024-07-01', 'Retail Inc.', 200000, 1002),
(1003, 'System Upgrade', '2024-03-01', '2024-08-01', 'HealthPlus', 250000, 1003);

SELECT * FROM Projects;
DESC Projects;

CREATE TABLE Clients (ClientID INT PRIMARY KEY,ClientName VARCHAR(100),ContactPerson VARCHAR(100),Email VARCHAR(100),PhoneNumber VARCHAR(20),
TotalSpent BIGINT,LastInteraction BIGINT);

INSERT INTO Clients (ClientID, ClientName, ContactPerson, Email, PhoneNumber, TotalSpent, LastInteraction)
VALUES
(201, 'TechCorp', 'Alice Roberts', 'alice.roberts@techcorp.com', '555-7890', 500000, 1693478400000),
(202, 'Retail Inc.', 'Bob Williams', 'bob.williams@retailinc.com', '555-2345', 300000, 1694156800000),
(203, 'HealthPlus', 'Carol Martinez', 'carol.martinez@healthplus.com', '555-6789', 400000, 1694572800000);

SELECT * FROM Clients;
DESC Clients;


CREATE TABLE Suppliers (SupplierID INT PRIMARY KEY,SupplierName VARCHAR(100),ContactPerson VARCHAR(100),Email VARCHAR(100),
PhoneNumber VARCHAR(20),AnnualSpend BIGINT,LastOrderDate BIGINT);

INSERT INTO Suppliers (SupplierID, SupplierName, ContactPerson, Email, PhoneNumber, AnnualSpend, LastOrderDate)
VALUES
(301, 'Office Supplies Co.', 'Nancy Green', 'nancy.green@officesupplies.com', '555-3456', 200000, 1694188800000),
(302, 'Tech Parts Ltd.', 'George Harris', 'george.harris@techparts.com', '555-5678', 350000, 1694265600000),
(303, 'Furniture World', 'Laura Adams', 'laura.adams@furnitureworld.com', '555-7890', 150000, 1694342400000);

SELECT * FROM Suppliers;
DESC Suppliers;

