-- SELECT DISTINCT TOP 100
--     [Nome]
-- FROM 
--     [Categoria]

-- SELECT TOP 100
--     [Id], [Nome], [CategoriaId]
-- FROM 
--     [Curso]
-- WHERE
--     [CategoriaId] > 1 AND
--     [Id] IS NOT NULL

SELECT TOP 100
    [Id], [Nome], [CategoriaId]
FROM 
    [Curso]
ORDER BY
    [Nome] DESC, [Id], [CategoriaId]