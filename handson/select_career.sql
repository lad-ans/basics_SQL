-- SELECT 
--     [Id],
--     [Title],
--     [Url],
--     (SELECT COUNT([CareerId]) FROM [CareerItem] WHERE [CareerId] = [Id]) AS [Courses]
-- FROM 
--     [Career]

-- good practise
SELECT 
    [Career].[Title],
    COUNT([Id]) as [Courses]
FROM 
    [Career]
    INNER JOIN [CareerItem] ON [CareerItem].[CareerId] = [Career].[Id]
GROUP BY
    [Career].[Title]