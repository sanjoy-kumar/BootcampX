/* => ERROR:  syntax error at or near "OUTER" 

```
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students 
OUTER JOIN cohorts ON cohorts.id = cohort_id;
```


=> That is because there are 3 different types of OUTER JOIN and we need to specify which one we want to perform: 

LEFT, RIGHT, or FULL. 

*/


/* 
=> The LEFT OUTER JOIN will return all of the students, even ones without a cohort_id. 
=> The first query will return all students because students is to the LEFT of the word JOIN.
*/


SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;


/*
=> The RIGHT OUTER JOIN will return all cohorts, even ones without any students enrolled. 
=> The second query will return all of the cohorts because cohorts is to the RIGHT of the word JOIN.
*/

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

/* 
=> The FULL OUTER JOIN will return all cohorts and all students, even when there is no match. 
=> The third query will return all rows from both tables, even when there is no match.
*/

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;



/*
LEFT and RIGHT
=> When we write a LEFT OUTER JOIN or a RIGHT OUTER JOIN, we can omit the word OUTER. 
=> In the rest of our examples, we will omit the OUTER keyword.
LEFT OUTER => LEFT
RIGHT OUTER => RIGHT
*/


/* 
LEFT OUTER => LEFT
*/


SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id;

/* 
RIGHT OUTER => RIGHT
*/

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students RIGHT JOIN cohorts ON cohorts.id = cohort_id;

