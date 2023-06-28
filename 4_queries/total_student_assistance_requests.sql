SELECT students.name, count(assistance_requests.*) AS total_assistance_requests
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;