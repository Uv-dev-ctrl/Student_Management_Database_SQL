-- =====================================================
-- Student Management Database
-- Domain: Data Analysis with SQL
-- Internship Project- Sumerix Global
-- Author: Urvashi Gurjar
-- =====================================================
CREATE DATABASE StudentManagement;

USE StudentManagement;

-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Grade VARCHAR(5),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

-- Insert Student Records
INSERT INTO Students VALUES
(101, 'Aarav', 'Male', 18, 'A', 85, 78, 90),
(102, 'Diya', 'Female', 17, 'A', 92, 88, 95),
(103, 'Rohan', 'Male', 18, 'B', 76, 82, 70),
(104, 'Ananya', 'Female', 17, 'A', 89, 91, 87),
(105, 'Vivaan', 'Male', 18, 'C', 65, 72, 68),
(106, 'Ishita', 'Female', 17, 'B', 81, 79, 84),
(107, 'Arjun', 'Male', 18, 'A', 95, 93, 91),
(108, 'Meera', 'Female', 17, 'B', 74, 80, 78),
(109, 'Kabir', 'Male', 18, 'C', 69, 75, 72),
(110, 'Saanvi', 'Female', 17, 'A', 88, 90, 92);

-- Display All Records
SELECT * FROM Students;

-- Average Score in Each Subject
SELECT
AVG(MathScore) AS Average_Math,
AVG(ScienceScore) AS Average_Science,
AVG(EnglishScore) AS Average_English
FROM Students;

-- Find Top Performer
SELECT *,
(MathScore + ScienceScore + EnglishScore) AS TotalMarks
FROM Students
ORDER BY TotalMarks DESC
LIMIT 1;

-- Count Students in Each Grade
SELECT Grade, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Grade;

-- Average Score by Gender
SELECT Gender,
AVG((MathScore + ScienceScore + EnglishScore)/3) AS AverageScore
FROM Students
GROUP BY Gender;

-- Students with Math Score Greater Than 80
SELECT *
FROM Students
WHERE MathScore > 80;
-- Update Grade of StudentID 103
UPDATE Students
SET Grade = 'A'
WHERE StudentID = 103;

-- Verify Updated Record
SELECT *
FROM Students
WHERE StudentID = 103;