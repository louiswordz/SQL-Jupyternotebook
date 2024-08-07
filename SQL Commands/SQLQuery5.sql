SELECT TOP (1000) [Studentid]
      ,[Score]
      ,[Average]
      ,[Grade]
      ,[Comment]
  FROM [Tutorials].[dbo].[StudentResult]

  /* 4. < */
  SELECT * FROM Tutorials.dbo.StudentResult
  WHERE Score < 65

  /* 5. <= */
  SELECT * FROM Tutorials.dbo.StudentResult
  WHERE Score <= 65

  /* 6. > */
  SELECT studentid, grade FROM Tutorials.dbo.StudentResult
  WHERE Average > 69

  /* >= */
  SELECT * FROM Tutorials.dbo.StudentResult
  WHERE Average >= 69

  /*8. NULL */
  SELECT * FROM Tutorials.dbo.studentsinfo

  /*9. NOT NULL */
  SELECT * FROM Tutorials.dbo.studentsinfo
  WHERE Lastname is not NULL

  /* 13 FLOOR */
  SELECT FLOOR(average) FROM Tutorials.dbo.StudentResult

  /* 14 CEIL */
  SELECT CEILING(average) FROM Tutorials.dbo.StudentResult

  SELECT average FROM Tutorials.dbo.StudentResult
 