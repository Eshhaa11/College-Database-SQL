CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE instructors (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department_id INTEGER
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    major_id INTEGER,
    FOREIGN KEY (major_id) REFERENCES departments(id)
);

CREATE TABLE courses (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    instructor_id INTEGER,
    FOREIGN KEY (instructor_id) REFERENCES instructors(id)
);

CREATE TABLE enrollments (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    grade TEXT,
    FOREIGN KEY (student_id) REFERENCES students(id)
    FOREIGN KEY (course_id) REFERENCES courses(id)
);


INSERT INTO departments (id, name) VALUES
(1, 'Computer Science'),
(2, 'English'),
(3, 'Mathematics'),
(4, 'Accounts'),
(5, 'Biology');

INSERT INTO instructors (id, name, department_id) VALUES
(1, 'Dr. Patel', 1),
(2, 'Dr. Lee', 2),
(3, 'Dr. Chen', 3),
(4, 'Dr Adams', 4),
(5, 'Dr. Esha', 5);



