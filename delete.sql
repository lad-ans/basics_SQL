select * from [Categoria]

-- begin transaction
--     DELETE FROM
--         [Categoria]
--     WHERE [Id] = 3
-- ROLLBACK -- do not DELETE. just show at terminal how many affecteds rows
-- -- COMMIT

DELETE FROM
    [CURSO] 
WHERE [CategoriaId] = 3

DELETE FROM
    [Categoria] 
WHERE [Id] = 3