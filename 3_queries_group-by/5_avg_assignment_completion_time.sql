SELECT name AS student, AVG(duration) AS average_assignment_duration
FROM assignment_submissions
RIGHT JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY name
ORDER BY average_assignment_duration DESC;