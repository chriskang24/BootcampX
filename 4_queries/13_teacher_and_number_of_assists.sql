-- We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.

-- Perform the same query as before, but include the number of assistances as well.

SELECT DISTINCT(teachers.name) AS "teacher", cohorts.name AS "cohort", COUNT(assistance_requests) AS "total_assistances"
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;