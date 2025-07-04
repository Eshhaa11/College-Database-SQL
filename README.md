# Capstone Project 2 – College Database Design and SQL Queries

## 📘 Overview

This project is a relational database system for a fictional college, designed and queried using SQL. It includes students, instructors, courses, departments, and enrollment relationships.

## 🧠 Schema Design

The database follows 3NF normalization and includes these five core tables:

- **departments**: Stores department names.
- **instructors**: Linked to departments via `department_id`.
- **students**: Linked to departments (as majors) via `major_id`.
- **courses**: Each course is linked to one instructor.
- **enrollments**: A junction table for many-to-many relationship between students and courses, with a `grade`.

### 🔗 Relationships

- Each student majors in one department.
- Each instructor belongs to one department.
- Each course is taught by one instructor.
- Each student can enroll in many courses; each course can have many students.

## 🛠️ How to Run

1. Open the file `create_college_db.sql` in any SQL editor (e.g., DB Browser for SQLite, pgAdmin, MySQL Workbench).
2. Execute the script to create tables and insert mock data.
3. Run `college_queries.sql` to test 10 advanced queries.

## 🧪 Queries Included

- Join: Students and majors
- Join: Courses and instructors
- Many-to-many: Who’s enrolled in what
- Aggregation: Count enrolled students per course
- Filter: Students enrolled in "Intro to Python"
- Join across 3 tables: Courses by department
- Aggregation + HAVING: Instructors teaching >1 course
- Subquery: Students not enrolled in any course
- Left join + count: Instructors per department
- Nested join + filter: Courses taken by CS majors

## 📦 Deliverables

- `create_college_db.sql`: Full schema and 10+ rows per table
- `college_queries.sql`: 10 custom queries with comments
- `README.md`: This file – explains schema and queries

## 👤 Author

Esha Patel 💗
