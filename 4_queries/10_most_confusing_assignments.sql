SELECT assignments.id as id, name, day, chapter, COUNT(assistance_requests.*) as total_reqs
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_reqs DESC;