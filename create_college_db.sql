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



