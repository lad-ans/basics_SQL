
-- contains
SELECT TOP 100
    *
FROM
    [Curso]
WHERE
    [Nome] LIKE '%Fundamentos%'

-- starts with
SELECT TOP 100
    *
FROM
    [Curso]
WHERE
    [Nome] LIKE '%Fundamentos'

-- ends with
SELECT TOP 100
    *
FROM
    [Curso]
WHERE
    [Nome] LIKE 'Fundamentos%'