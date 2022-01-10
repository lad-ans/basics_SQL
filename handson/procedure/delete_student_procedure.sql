CREATE OR ALTER PROCEDURE spDeleteStudent (
    @studentId UNIQUEIDENTIFIER
)
AS
    BEGIN TRANSACTION
        -- remove reference on StudentCourse
        DELETE FROM 
            [StudentCourse]
        WHERE 
            [StudentId] = @studentId

        -- removing account
        DELETE FROM 
            [Student]
        WHERE 
            [Id] = @studentId
    COMMIT