/* Group by */
SELECT Gender,  count(Gender)
FROM StudentInfo
GROUP BY Gender

/* Partion 1 */
SELECT Gender, Age, COUNT(Gender) OVER (Partition by Gender)  GPartition
FROM studentinfo

/* Partition 2 */
SELECT Gender, Age, Grade, Score, 
COUNT(Grade) OVER (PARTITION BY Grade) GradeP, COUNT(Gender) OVER (PARTITION BY Gender ) GenderP
FROM
studentinfo SI
JOIN StudentResult SR
On SI.studentid = SR.Studentid

/* CTE */
WITH CTE_Student AS
(
SELECT Gender, Age, Grade, Score, 
COUNT(Grade) OVER (PARTITION BY Grade) GradeP, COUNT(Gender) OVER (PARTITION BY Gender ) GenderP
FROM
studentinfo SI
JOIN StudentResult SR
On SI.studentid = SR.Studentid
)

SELECT * FROM CTE_Student

WITH CTE_Student2  AS
(
	SELECT  Gender, Age, Grade, COUNT(Grade) OVER (PARTITION BY Grade) AGEP
	FROM
	studentinfo SI
	JOIN StudentResult SR
	ON SI.studentid = SR.Studentid
)
SELECT * FROM CTE_Student2

/* Temp Tables*/
CREATE TABLE #Temp_StudentInfo(
FirstName varchar(50),
LastName varchar(50),
Gender varchar(20),
Score float,
Grade varchar(10)
)

INSERT INTO #Temp_StudentInfo VALUES
('Stephen', 'Brew', 'Male', 77.2, 'B')

INSERT INTO #Temp_StudentInfo
SELECT FirstName, LastName, Gender, Score, Grade
FROM
studentinfo SI
JOIN StudentResult SR
ON SI.studentid = SR.Studentid

SELECT * FROM #Temp_StudentInfo

DROP TABLE IF EXISTS #temp_Student2

create table #temp_Student2 (
StudentId int,
Gender varchar(20),
AVGScore int,
CountGrade varchar(50)
)

INSERT INTO #temp_Student2
SELECT studentinfo.StudentId, Gender, AVG(Score), Count(Grade)
FROM studentinfo 
JOIN StudentResult 
ON studentinfo.studentid = StudentResult.Studentid
GROUP BY StudentInfo.studentId, Gender, Score, Grade 

SELECT * FROM #temp_Student2