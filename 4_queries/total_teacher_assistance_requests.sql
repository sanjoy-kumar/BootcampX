SELECT COUNT(assistance_requests.*) as total_assistances, teachers.name as name
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
GROUP BY  teachers.name 
HAVING teachers.name  = 'Waylon Boehm';

