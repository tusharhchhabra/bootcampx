SELECT cohorts.name AS cohort_name,
  COUNT(assignment_submissions.*) AS assignment_submissions_count
FROM cohorts
  JOIN students ON cohorts.id = students.cohort_id
  JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohort_name
ORDER BY assignment_submissions_count DESC;