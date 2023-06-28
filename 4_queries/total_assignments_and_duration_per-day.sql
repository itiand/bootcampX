SELECT assignments.day, COUNT(assignments.*) as number_of_assignments, SUM(duration) as total_duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;