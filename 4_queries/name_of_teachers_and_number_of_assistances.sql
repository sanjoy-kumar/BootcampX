/*
We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.

Perform the same query as before, but include the number of assistances as well.
*/

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, COUNT(assistance_requests) as total_assistance
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name , cohorts.name
ORDER BY teacher;

