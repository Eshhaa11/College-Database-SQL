SELECT s.name AS student_name, d.name AS major
FROM students s
JOIN departments d ON s.major_id = d.id;


SELECT c.title AS course, i.name AS instructor
FROM courses c
JOIN instructors i ON c.instructor_id = i.id;


SELECT s.name AS student, c.title AS course
FROM enrollments e
JOIN students s ON e.student_id = s.id
JOIN courses c ON e.course_id = c.id;


SELECT c.title, COUNT(e.id) AS total_enrolled
FROM courses c
LEFT JOIN enrollments e ON c.id = e.course_id
GROUP BY c.title;


SELECT s.name
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN courses c ON e.course_id = c.id
WHERE c.title = 'Intro to Programming';


SELECT c.title
FROM courses c
JOIN instructors i ON c.instructor_id = i.id
JOIN departments d ON i.department_id = d.id
WHERE d.name = 'Calculus';


SELECT i.name, COUNT(c.id) AS course_count
FROM instructors i
JOIN courses c ON i.id = c.instructor_id
GROUP BY i.name
HAVING COUNT(c.id) > 1;


SELECT name
FROM students
WHERE id NOT IN (
    SELECT student_id FROM enrollments
);



SELECT d.name AS department, COUNT(i.id) AS instructor_count
FROM departments d
LEFT JOIN instructors i ON d.id = i.department_id
GROUP BY d.name;



SELECT DISTINCT c.title
FROM courses c
JOIN enrollments e ON c.id = e.course_id
JOIN students s ON e.student_id = s.id
JOIN departments d ON s.major_id = d.id
WHERE d.name = 'Computer Science';
