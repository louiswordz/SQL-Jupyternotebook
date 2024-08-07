SELECT FirstName, LastName ,Age FROM studentinfo
WHERE Age > 25

SELECT FirstName, LastName, Age, 
CASE
	WHEN Age = 22  THEN 'Happy'
	WHEN  Age BETWEEN 23 and 30 THEN 'Glad'
	ELSE  'Grateful'
END condition
FROM StudentInfo

SELECT  FirstName, Age FROM studentinfo
GROUP BY Age, FirstName
ORDER BY Age,  FirstName

SELECT Score, Grade FROM StudentResult
WHERE Grade = 'A'

SELECT FirstName, LastName, Score, Grade FROM 
StudentInfo Join StudentResult
ON StudentInfo.StudentId = StudentResult.studentId

SELECT FirstName, LastName, Age FROM StudentInfo
UNIon
SELECT  Grade, Comment,Score  FROM StudentResult

SELECT FirstName, Age, Count(Age) FROM studentinfo
Where Age > 25
Group By Age, FirstName
Having Count(Age) = 1

SELECT FirstName, LastName, Age, Count(Age) OVER (PARTITION By Age) PartitonAge FROM StudentInfo
WHERE AGE < 25

SELECT studentinfo.FirstName, expressStudentInfo.Lastname, ExpressStudentinfo.Age FROM ExpressStudentinfo
join Studentinfo
on Studentinfo.studentId = ExpressStudentinfo.StudentId

SELECT FirstName, LastName FRom studentInfo
Where FirstName Not IN ('Mercy', 'Brian','kennedy')
