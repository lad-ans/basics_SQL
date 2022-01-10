SELECT * FROM [Course]
SELECT * FROM [Student]
SELECT * FROM [StudentCourse]

DECLARE @studentId UNIQUEIDENTIFIER = (select NEWID());

INSERT INTO
    [Student] (
        [Id], [Name], [Email], [Document], [Phone], [Birthdate], [CreateDate]
    )
VALUES (
    @studentId,
    'Ladino Anselmo',
    'dev@teste.com',
    '123446789DB',
    '840552930',
    NULL, 
    GETDATE()
)

INSERT INTO
    [StudentCourse]
VALUES (
    '5c349848-e717-9a7d-1241-0e6500000000',
    '4b5af275-f557-410b-8d25-4379eeb5d5ea',
    50,
    0,
    '2021-01-13 12:35:54',
    GETDATE()
)