-- IN: select all with Id present on the list
SELECT TOP 100
    *
FROM
    [Curso]
WHERE
    [Id] IN (1, 2, 3)
    -- [Id] IN (SELECT [Id] FROM [Categoria])

-- BETWEEN: select all with Id between parameters
SELECT TOP 100
    *
FROM
    [Curso]
WHERE
    -- [Id] BETWEEN 1 AND 3
    [Id] BETWEEN '2022-01-01 00:00:00' AND '2022-01-05 00:00:00'