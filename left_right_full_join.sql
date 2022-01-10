SELECT TOP 100
    [Curso].[Id],
    [Curso].[Nome],
    [Categoria].[Id] AS [CategoriaId],
    [Categoria].[Nome] AS [Categoria]
FROM
    -- [Curso]
    -- LEFT JOIN [Categoria] 
    --     ON [Curso].[CategoriaId] = [Categoria].[Id]
    
    -- [Curso]
    -- RIGHT JOIN [Categoria] 
    --     ON [Curso].[CategoriaId] = [Categoria].[Id]

    [Curso]
    FULL JOIN [Categoria] 
        ON [Curso].[CategoriaId] = [Categoria].[Id]