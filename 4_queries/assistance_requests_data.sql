SELECT teachers.name AS teacher_name,
      students.name AS student_name,
      assignments.name AS assignments_name,
      (completed_at - started_at) as assistance_duration
FROM teachers 
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY assistance_duration;