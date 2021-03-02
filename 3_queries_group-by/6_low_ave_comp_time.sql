SELECT students.name as student, AVG(assignment_submissions.duration) as ave_assignment_dur, AVG(assignments.duration) as ave_est_dur
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY ave_assignment_dur;