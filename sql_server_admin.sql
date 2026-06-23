-- DataCamp SQL Server for Database Administrators
-- Table creation, data insertion, and Window Function usage

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert sample data into the table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES 
(1, 'Ali', 'Yilmaz', 'Data', 75000.00),
(2, 'Ayse', 'Demir', 'Engineering', 85000.00),
(3, 'Mehmet', 'Kaya', 'Data', 72000.00);

-- Use a Window Function to rank salaries within each department
SELECT 
    FirstName, 
    LastName, 
    Department, 
    Salary,
    RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) as DepartmentSalaryRank
FROM Employees;
