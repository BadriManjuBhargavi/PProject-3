-- Create a sample database (if it doesn't exist)
CREATE DATABASE SampleDB;
GO

-- Use the created database
USE SampleDB;
GO

-- Create a sample table for student data
CREATE TABLE StudentMarks (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Marks INT
);

-- Insert some sample data
INSERT INTO StudentMarks (StudentID, StudentName, Marks)
VALUES
    (1, 'Alice', 85),
    (2, 'Bob', 92),
    (3, 'Charlie', 78),
    (4, 'David', 65),
    (5, 'Eve', 88);

-- Query to display basic statistics of marks
SELECT
    MIN(Marks) AS MinMarks,
    MAX(Marks) AS MaxMarks,
    AVG(Marks) AS AvgMarks,
    SUM(Marks) AS TotalMarks,
    COUNT(*) AS TotalStudents
FROM StudentMarks;
