SELECT teachers.name AS teacher,
  COUNT(assistance_requests.*) AS total_assistances
FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teacher;