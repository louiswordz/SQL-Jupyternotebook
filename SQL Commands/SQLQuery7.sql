/* GROUP BY && ORDER BY */

/* GROUP BY */
SELECT grade, COUNT(grade) as gradecount from StudentResult
group by Grade

/* ORDER BY */
SELECT gender
