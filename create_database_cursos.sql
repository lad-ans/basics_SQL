
CREATE DATABASE [Cursos]
GO

USE [Cursos]

CREATE TABLE [Categoria] (
   [Id]    INT IDENTITY(1, 1),
   [Nome]    NVARCHAR(80) NOT NULL,

   CONSTRAINT [PK_CATEGORIA] PRIMARY KEY([Id])
)
GO

CREATE TABLE  [Curso] (
   [Id]    INT IDENTITY(1, 1), -- INCREMENT IN STEP OF ONE
   [Nome]  NVARCHAR(80) NOT NULL,
   [CategoriaId]    INT NOT NULL,

   CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
   CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([CategoriaId])
        REFERENCES [Categoria]([Id])
)
GO



-- USE [master];

-- DECLARE @kill varchar(8000) = '';
-- SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), session_id) + ';'
-- FROM sys.dm_exec_sessions
-- WHERE database_id  = db_id('Cursos')
-- EXEC(@kill);

-- DROP DATABASE [Cursos]
