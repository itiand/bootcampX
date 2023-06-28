SELECT teachers.name AS teacher_name, count(assistance_requests.*) AS total_assistance_requests
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;