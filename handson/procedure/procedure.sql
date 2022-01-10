-- we cannot create a view because our variable declaration
CREATE OR ALTER PROCEDURE spStudentProgress (
    @studentId UNIQUEIDENTIFIER
)
AS
    SELECT 
        [Course].[Title] as [Course],
        [Student].[Name] as [Student],
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
    ORDER BY
        [StudentCourse].[LastUpdateDate] DESC