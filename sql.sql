-- Create and use the database
CREATE DATABASE IF NOT EXISTS dbproject;
USE dbproject;

-- Create the 'Students' table
CREATE TABLE Students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    user_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    dietary_preferences VARCHAR(255),
    family_members INT,
    vote BOOL NOT NULL DEFAULT 0
);

-- Create the 'Teachers' table
CREATE TABLE Teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    complimentary BOOL NOT NULL DEFAULT true,
    family_members INT NOT NULL DEFAULT 0
);

-- Create the 'Admin' table
CREATE TABLE Admin (
    UserName VARCHAR(255),
    Password VARCHAR(255)
);

-- Create the 'suggestions' table
CREATE TABLE suggestions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    suggestion_text TEXT NOT NULL,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(id)
);

-- Create the 'attendance' table
CREATE TABLE attendance (
    id INT PRIMARY KEY AUTO_INCREMENT,
    suggestion_text TEXT NOT NULL,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(id)
);

-- Insert initial admin data
INSERT INTO Admin (UserName, Password)
VALUES ('admin', 'admin');

-- Rename the 'suggestions' table to 'menu'
RENAME TABLE suggestions TO menu;

-- Add a new column for votes in the 'menu' table
ALTER TABLE menu
ADD COLUMN votes INT DEFAULT 0;

-- Add a new column for budget in the 'menu' table
ALTER TABLE menu
ADD COLUMN budget INT DEFAULT 0;

-- Create the 'PerformanceProposal' table
CREATE TABLE PerformanceProposal (
    ProposalID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT REFERENCES Students(id),
    PerformanceType VARCHAR(50) NOT NULL,
    Duration VARCHAR(50) NOT NULL,
    SpecialRequirements TEXT,
    Budget VARCHAR(50) NOT NULL
);

-- Create the 'Themes' table
CREATE TABLE Themes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT REFERENCES Students(id),
    name VARCHAR(255)
);

-- Create the 'family' table
CREATE TABLE family (
    familyid INT PRIMARY KEY AUTO_INCREMENT,
    fam_member_id INT REFERENCES Students(id),
    name VARCHAR(255)
);

-- Create the 'Task' table
CREATE TABLE Task (
    TaskID INT PRIMARY KEY AUTO_INCREMENT,
    OrganizerID INT REFERENCES Students(id),
    TaskDescription TEXT,
    CompletionStatus BOOL
);

-- Create the 'Budget' table
CREATE TABLE Budget (
    BudgetID INT PRIMARY KEY AUTO_INCREMENT,
    BudgetManagerID INT REFERENCES Teachers(id),
    ExpenseCategory VARCHAR(50),
    ExpenseAmount DECIMAL(10, 2),
    BudgetAdjustment DECIMAL(10, 2)
);

-- Create the 'Invitation' table
CREATE TABLE Invitation (
    InvitationID INT PRIMARY KEY AUTO_INCREMENT,
    InvitationManagerID INT REFERENCES Students(id),
    Design TEXT,
    DistributionMethod VARCHAR(50)
);


-- Add a new column for votes in the 'suggestions' table
ALTER TABLE menu
ADD COLUMN votes INT DEFAULT 0;

-- View the 'Themes' table
SELECT * FROM Themes;

-- View the 'Students' table
SELECT * FROM Students;

-- View the 'Teachers' table
SELECT * FROM Teachers;

-- View the 'menu' table
SELECT * FROM menu;

-- View the 'PerformanceProposal' table
SELECT * FROM PerformanceProposal;

-- View the 'suggestions' table
SELECT * FROM suggestions;

-- View family members from the 'Teachers' table
SELECT family_members FROM Teachers;

-- Count the number of students and teachers
SELECT COUNT(*) AS studentCount FROM Students;
SELECT COUNT(*) AS teacherCount FROM Teachers;

-- Sum of family members for teachers and students
SELECT SUM(family_members) AS teacherFamilyCount FROM Teachers;
SELECT SUM(family_members) AS studentFamilyCount FROM Students;



-- Welcome Party Management System Database Report

-- Database Information
SHOW DATABASES;
USE dbproject;

-- Table Information
SHOW TABLES;

-- Students Table
-- Get the count and sample data from the Students table
SELECT COUNT(*) AS StudentCount FROM Students;
SELECT * FROM Students;

-- Teachers Table
-- Get the count and sample data from the Teachers table
SELECT COUNT(*) AS TeacherCount FROM Teachers;
SELECT * FROM Teachers;

-- Admin Table
-- Display the data from the Admin table
SELECT * FROM Admin;

-- Menu Table
-- Get the count and sample data from the menu table
SELECT COUNT(*) AS MenuItemCount FROM menu;
SELECT * FROM menu;

-- PerformanceProposal Table
-- Get the count and sample data from the PerformanceProposal table
SELECT COUNT(*) AS ProposalCount FROM PerformanceProposal;
SELECT * FROM PerformanceProposal;

-- Themes Table
-- Get the count and sample data from the Themes table
SELECT COUNT(*) AS ThemeCount FROM Themes;
SELECT * FROM Themes;

-- Family Table
-- Get the count and sample data from the Family table
SELECT COUNT(*) AS FamilyCount FROM family;
SELECT * FROM family;

-- Task Table
-- Get the count and sample data from the Task table
SELECT COUNT(*) AS TaskCount FROM Task;
SELECT * FROM Task;

-- Budget Table
-- Get the count and sample data from the Budget table
SELECT COUNT(*) AS BudgetCount FROM Budget;
SELECT * FROM Budget;

-- Invitation Table
-- Get the count and sample data from the Invitation table
SELECT COUNT(*) AS InvitationCount FROM Invitation;
SELECT * FROM Invitation;

-- Attendance Table
-- Get the count and sample data from the Attendance table
SELECT COUNT(*) AS AttendanceCount FROM attendance;
SELECT * FROM attendance;

-- Suggestions Table
-- Get the count and sample data from the Suggestions table
SELECT COUNT(*) AS SuggestionCount FROM suggestions;
SELECT * FROM suggestions;







-- Students Table
SELECT COUNT(*) AS StudentCount FROM Students;
SELECT * FROM Students;

-- Teachers Table
SELECT COUNT(*) AS TeacherCount FROM Teachers;
SELECT * FROM Teachers;

-- Admin Table
SELECT * FROM Admin;

-- Menu Table
SELECT COUNT(*) AS MenuItemCount FROM menu;
SELECT * FROM menu;

-- PerformanceProposal Table
SELECT COUNT(*) AS ProposalCount FROM PerformanceProposal;
SELECT * FROM PerformanceProposal;

-- Themes Table
SELECT COUNT(*) AS ThemeCount FROM Themes;
SELECT * FROM Themes;

-- Family Table
SELECT COUNT(*) AS FamilyCount FROM family;
SELECT * FROM family;

-- Task Table
SELECT COUNT(*) AS TaskCount FROM Task;
SELECT * FROM Task;

-- Budget Table
SELECT COUNT(*) AS BudgetCount FROM Budget;
SELECT * FROM Budget;

-- Invitation Table
SELECT COUNT(*) AS InvitationCount FROM Invitation;
SELECT * FROM Invitation;

-- Attendance Table
SELECT COUNT(*) AS AttendanceCount FROM attendance;
SELECT * FROM attendance;

-- Suggestions Table
SELECT COUNT(*) AS SuggestionCount FROM suggestions;
SELECT * FROM suggestions;


