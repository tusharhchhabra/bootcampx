SELECT students.name AS student,
  COUNT(assistance_requests.*) AS total_assistances
FROM students
  JOIN assistance_requests ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY student;