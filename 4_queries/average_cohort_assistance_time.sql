/*
We need to be able to see the average duration of a single assistance request for each cohort.

Get the average duration of assistance requests for each cohort.

Select the cohort's name and the average assistance request time.
Order the results from shortest average to longest.

*/


SELECT  cohorts.name as name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;

