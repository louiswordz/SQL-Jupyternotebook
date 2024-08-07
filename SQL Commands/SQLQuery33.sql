SELECT FirstName, TRIM(FirstName) as TrimedFName, LastName, TRIM(LastName) TrimedLName
FROM StudentError

SELECT FirstName, LTRIM(FirstName)
FROM StudentError

SELECT FirstName, RTRIM(FirstName)
FROM StudentError

--Replace

SELECT REPLACE(LastName, 'Hen', 'Henry') replacedName
FROM StudentError

--Substrings
SELECT SE.FirstName, SE.LastName, SI.firstName, SI.LastName FROM testing.dbo.StudentError SE
JOIN Tutorials.dbo.studentinfo SI
ON SE.FirstName = SI.firstName

SELECT SUBSTRING(SE.FirstName, 1, 4), SUBSTRING(SE.LastName,1,4), SUBSTRING(SI.firstName, 1, 4), SUBSTRING(SI.LastName, 1, 4) FROM testing.dbo.StudentError SE
JOIN Tutorials.dbo.studentinfo SI
ON SUBSTRING(SE.FirstName, 1,4) = SUBSTRING(SI.firstName, 1,4)


SELECT LOWER(SE.FirstName), UPPER(SE.LastName) FROM testing.dbo.StudentError SE

--Stored PROCEDURE

CREATE PROCEDURE TEST
AS
SELECT * FROM testing.dbo.StudentError
GO;

EXEC TEST

--subqueries

SELECT StudentId, SCORE FROM StudentResult 
WHERE EXISTS
(SELECT AVG(SCORE) FROM StudentResult
WHERE SCORE > 60)