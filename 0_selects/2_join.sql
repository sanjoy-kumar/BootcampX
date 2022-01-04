/* => If we want to select the name and cohort_id of all students, that's a simple query with a single table.
SELECT name, email, cohort_id
FROM students;
*/

/*  => To start using multiple tables in a query, we first have to JOIN them.
SELECT name, email, cohort_id
FROM students JOIN cohorts;
*/

/* =>  If these two tables are JOINed together, we can select columns from either table.
SELECT name, email, name
FROM students JOIN cohorts;
*/


/* => we having a naming conflict because the column name is the same in both tables. So we have to specify which table we want to select name from.
SELECT students.name, email, cohorts.name
FROM students JOIN cohorts;
*/

/* => to make our results look a little bit nicer, we can alias the names.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts;
*/

/* ----------------------------- Start -------------------------------------- */
/* => Every JOIN must also have an ON.*/

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts ON cohort_id = cohorts.id;



/* => The order does not matter here, so we could also write the exact same query like this: */

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM cohorts JOIN students ON cohort_id = cohorts.id;



/* => Or this: */
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts ON cohorts.id = cohort_id;














