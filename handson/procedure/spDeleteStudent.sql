CREATE OR ALTER PROCEDURE spDeleteStudent (
    @studentId UNIQUEIDENTIFIER
)
AS
    BEGIN TRANSACTION
        DELETE FROM
            [StudentCourse]
        WHERE
            [StudentId] = @studentId
        
        DELETE FROM
            [Student]
        WHERE
            [Id] = @studentId
    COMMIT