/* => The kind of JOINing that we've done so far is called an INNER JOIN. In fact, we could rewrite the query to include the INNER keyword. */
/* => It will produce the exact same results as when we leave the INNER keyword off. */
/* => An INNER JOIN will only give us rows where there is a match between the two tables. */
/* => If the foreign key is NULL, the row will not be included in the result of an INNER JOIN. */
/* => Most of the time, like 99% of the time, we want to use an INNER JOIN. */

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;

/*
INNER JOIN => JOIN
*/

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts ON cohorts.id = cohort_id;
