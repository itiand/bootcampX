SELECT cohorts.name as cohort_name, count(students.name) as total_students
FROM cohorts
JOIN students ON cohort_id = cohorts.id
GROUP BY cohort_name
HAVING count(students.name) >= 18
ORDER BY total_students;