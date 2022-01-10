

DECLARE @studentId UNIQUEIDENTIFIER = '4b5af275-f557-410b-8d25-4379eeb5d5ea'
SELECT 
    [Course].[Title] as [Course],
    [Student].[Name] as [Student],
    [StudentCourse].[Progress],
    [StudentCourse].[LastUpdateDate]
FROM
    [Course]
    LEFT JOIN [StudentCourse] ON [StudentCourse].[CourseId] = [Course].[Id]
    LEFT JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]