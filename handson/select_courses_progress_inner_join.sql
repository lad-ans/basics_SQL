SELECT * FROM [Student]
DECLARE @studentId UNIQUEIDENTIFIER = '4b5af275-f557-410b-8d25-4379eeb5d5ea'
SELECT 
    [Student].[Name] as [Student],
    [Course].[Title] as [Course],
    [StudentCourse].[Progress],
    [StudentCourse].[LastUpdateDate]
FROM
    [StudentCourse]
    INNER JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
    INNER JOIN [Course] ON [StudentCourse].[CourseId] = [Course].[Id]
WHERE
    [StudentCourse].[StudentId] = @studentId
    AND [StudentCourse].[Progress] < 100
    AND [StudentCourse].[Progress] > 0
ORDER BY [StudentCourse].[LastUpdateDate]