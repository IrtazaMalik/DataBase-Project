# DataBase-Project (Welcome Management System)

## Overview

The Welcome Management System is a web-based application built using Node.js, Express.js, and MySQL. It provides user authentication and various functionalities for admins, students, and teachers to manage event registrations, meal preferences, performance proposals, and voting.

## Features

User Authentication

Admin, student, and teacher login functionality.

Secure password storage.

Student & Teacher Registration

Students and teachers can register with personal details, dietary preferences, and family member count.

Menu Suggestion and Voting

Students can suggest menu items with a budget.

Students can vote on menu suggestions.

The system ensures each student can vote only once.

Performance Proposal and Voting

Students can propose performances with a specified budget.

Students can vote on suggested performances.

The system prevents multiple votes by the same student.

Attendance Management

Fetches counts of students, teachers, and their family members attending the event.

Theme Display

Displays suggested themes for the event.

Highest Voted Items

Retrieves the highest voted menu and performance suggestions.

Tech Stack

## Backend: Node.js, Express.js

Database: MySQL

Frontend: HTML, CSS, JavaScript (Static files served from public directory)

Installation

Prerequisites

Ensure you have the following installed:

Node.js

MySQL

## Setup Steps

Clone the repository:

git clone https://github.com/your-repo-url.git
cd welcome-management-system

## Install dependencies:

npm install

Configure the database:

Create a MySQL database named dbproject.

Import the required schema.

Update connection settings in server.js with your MySQL credentials.

Start the server:

node server.js

The application will run at http://localhost:8080

API Endpoints

Authentication

POST /adminlogin - Admin login.

POST /studentlogin - Student login.

POST /teacherlogin - Teacher login.

POST /studentregister - Register a new student.

POST /teacherregistration - Register a new teacher.

Event Management

POST /submitSuggestion - Submit a menu suggestion.

GET /suggestedMenus - Fetch menu suggestions.

POST /vote - Vote for a menu suggestion.

POST /submitPerformance - Submit a performance proposal.

GET /suggestedPerformances - Fetch performance proposals.

POST /p_vote - Vote for a performance proposal.

Attendance & Themes

GET /attendance - Get attendance statistics.

GET /themesdisplay - Fetch event themes.

GET /highestVotedSuggestion - Get the highest voted menu.

GET /highestVotedPerformance - Get the highest voted performance.
