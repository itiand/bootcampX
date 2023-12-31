SELECT assignments.id, assignments.day, assignments.chapter, assignments.name,
COUNT(assistance_requests.*) as total_assistance_request
FROM assignments
JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id
ORDER BY total_assistance_request DESC;
