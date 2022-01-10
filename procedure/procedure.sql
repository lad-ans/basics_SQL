CREATE OR ALTER PROCEDURE [spListaCursosComVariaveis] 
    @Category NVARCHAR(60)
AS

    DECLARE @CategoryId INT
    SET @CategoryId = (SELECT TOP 1 [Id] FROM [Categoria] WHERE [Nome] = @Category)
    SELECT 
        *
    FROM
        [Curso]
    WHERE [CategoriaId] = @CategoryId