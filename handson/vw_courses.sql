CREATE OR ALTER VIEW vwCourses AS
    select 
        [Course].[Id],
        [Course].[Tag],
        [Course].[Title],
        [Course].[Url],
        [Course].[Summary],
        [Course].[CreateDate],

        [Category].[Title] as [Category],

        [Author].[Name] as [Author]
    from 
        [course]
        INNER JOIN [Category] ON [Course].[CategoryId] = [CategoryId]
        INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id]
    WHERE 
        [active] = 1
