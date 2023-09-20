SELECT students.name AS student,
  avg(assignment_submissions.duration) AS average_completion_time,
  avg(assignments.duration) AS average_expected_completion_time
FROM students
  JOIN assignment_submissions ON student_id = students.id
  JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_completion_time;