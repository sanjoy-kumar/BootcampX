const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


// pool.query(`
// SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
// FROM students
// JOIN cohorts ON cohorts.id = students.cohort_id
// JOIN assistance_requests ON students.id = student_id
// JOIN teachers ON teachers.id = teacher_id
// WHERE cohorts.name = '${process.argv[2] || 'JUL02'}'
// ORDER BY teacher;
// `)
// .then(res => {
//   res.rows.forEach(user => {
//     console.log(`${user.cohort}: ${user.teacher}`);
//   })
// }).catch(err => console.error('query error', err.stack));



const queryString = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
WHERE cohorts.name = $1
ORDER BY teacher;
`;

const cohortName = process.argv[2];
// Store all potentially malicious values in an array.
const values = [`${cohortName}`];

pool.query(queryString, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
}).catch(err => console.error('query error', err.stack));

