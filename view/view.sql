CREATE OR ALTER VIEW vwContagemCursosPorCategoria AS
    SELECT TOP 100
        [Categoria].[Nome],
        COUNT([Curso].[CategoriaId]) AS [Cursos]
    FROM
        [Categoria]
        INNER JOIN [Curso] ON [Curso].[CategoriaId] = [Categoria].[Id]
    GROUP BY
        [Categoria].[Nome],
        [Curso].[CategoriaId]
    HAVING -- WHERE CLOSURE NOT ALLOWED AFTER GROUP BY FILTER
        COUNT([Curso].[CategoriaId]) > 1
