USE [Cursos]

-- inserting into [Curso] table
INSERT INTO [Categoria]([Nome]) VALUES ('Backend')
INSERT INTO [Categoria]([Nome]) VALUES ('Frontend')
INSERT INTO [Categoria]([Nome]) VALUES ('Mobile')

-- inserting into [Categoria] table
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('Fundamentos de C#', 1)
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('Fundamentos de OOP', 1)
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('Angular', 2)
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('Flutter', 3)

-- simplified
-- INSERT INTO [Curso]VALUES ('React Navite', 3)