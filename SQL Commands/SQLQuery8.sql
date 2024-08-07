SELECT * FROM studentinfo
UNION ALL
select * FROM ExpressStudentinfo
WHERE studentid IS NOT NULL

/* CONDITIONAL*/
SELECT FirstName, LastName, Age,
CASE
	WHEN Age = 33	THEN 'Accept'
	ELSE 'Decline'
END AS JACOBSON
FROM ExpressStudentinfo


SELECT FirstName, LastName, Age,
CASE
	WHEN Age >= 30 THEN 'Adult'
	WHEN Age BETWEEN 25 AND 29 THEN 'Young'
	ELSE 'Baby'
END AS SAY
FROM ExpressStudentinfo
UNION
SELECT FirstName, LastName, Age,
CASE
	WHEN Age >= 30 THEN 'Adult'
	WHEN Age BETWEEN 25 AND 29 THEN 'Young'
	ELSE 'Baby'
END AS SAY
FROM studentinfo

SELECT FirstName, LastName, Score, Average, Comment,
CASE
	WHEN Comment = 'Excellent' THEN Score + 10
	WHEN Comment = 'V.Good' THEN Score + 6
	WHEN Comment = 'Pass' THEN Score + 3
	ELSE Score +1
END AS REWARD
FROM StudentResult
INNER JOIN studentinfo
	On studentinfo.studentid = StudentResult.Studentid

/*update and delete */
Update StudentResult SET
Average = 59.1
WHERE studentid = 111

Update studentinfo SET
studentid = 112
WHERE score = 70

DELETE StudentResult
WHERE Studentid = 112

/* Having */
SELECT Age, Count(Age) as AgeCount FROM studentinfo
GROUP BY Age
Having Count(Age) > 9

