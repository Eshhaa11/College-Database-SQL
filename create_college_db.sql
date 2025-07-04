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
    title TEXT NOT NULL,
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
(6, 'Geography'),
(7, 'Business'),
(8, 'Python I'),
(9, 'Physics'),
(10, 'Chemistry');

INSERT INTO instructors (id, name, department_id) VALUES
(1, 'Dr. Patel', 1),
(2, 'Dr. Lee', 2),
(3, 'Dr. Chen', 3),
(4, 'Dr Adams', 4),
(5, 'Dr. Esha', 5),
(6, 'Dr.John'),
(7, 'Dr. Ansh'),
(8, 'Dr. Linda'),
(9, 'Dr. Shah'),
(10, 'Dr. Mehta');


INSERT INTO students (id, name, major_id) VALUES
(1, 'Esha Patel', 1),
(2, 'Natasha Karanja', 2),
(3, 'Saleh Nasser', 3),
(4, 'Vansh Patel', 4),
(5, 'Tilak Patel', 5),
(6, 'Ansh Patel', 6),
(7, 'Kripa Patel', 7),
(8, 'Vanshika Patel', 8),
(9, 'Prachi Patel', 9),
(10, 'Nidhi Patel', 10);

INSERT INTO courses (id, title, instructor_id) VALUES
(1, 'Calculus', 1),
(2, 'Intro To Programming', 2),
(3, 'Database' , 3),
(4, 'Python', 4),
(5, 'HTML Basics', 5),
(6, 'JavaScript Essentials', 6),
(7, 'API', 7),
(8, 'React Intro', 8),
(9, 'Flask', 9),
(10, 'CSS', 10)

INSERT INTO enrollments (id, student_id, course_id, grade) VALUES 
(1, 1, 1, 'A'),
(2, 2, 2, 'A'),
(3, 3, 3, 'B'),
(4, 4, 4, 'B+'),
(5, 5, 5, 'B-'),
(6, 6, 6, 'B'),
(7, 7, 7, 'B'),
(8, 8, 8, 'C'),
(9, 9, 9, 'A'),
(10, 10, 10, 'C'),




