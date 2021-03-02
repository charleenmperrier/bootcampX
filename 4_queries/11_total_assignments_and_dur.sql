SELECT assignments.day as day, COUNT(assignments) as num_of_assignments, SUM(duration)
FROM assignments
GROUP BY assignments.day
ORDER BY day;