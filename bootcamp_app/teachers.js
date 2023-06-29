const input = process.argv.slice(2);

const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name AS teacher_id, cohorts.name as cohort_name
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '${input[0]}'
ORDER BY teacher_id;
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort_name}: ${row.teacher_id}`);
  });
})