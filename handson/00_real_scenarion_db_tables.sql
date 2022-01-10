create database [layndev]
GO

USE [layndev]
GO

create TABLE [Student] (
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Name] NVARCHAR(120) NOT NULL,
    [Email] NVARCHAR(180) NOT NULL,
    [Document] NVARCHAR(20) NULL,
    [Phone] NVARCHAR(20) NULL,
    [Birthdate] DATETIME NULL,
    [CreatedAt] DATETIME NOT NULL DEFAULT(GETDATE()),

    CONSTRAINT [PK_Student] PRIMARY KEY([Id])
);
GO

create TABLE [Author] (
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Name] NVARCHAR(80) NOT NULL,
    [Title] NVARCHAR(80) NOT NULL,
    [Image] NVARCHAR(1024) NULL,
    [Bio] NVARCHAR(2000) NULL,
    [Url] NVARCHAR(450) NULL,
    [Email] NVARCHAR(160) NOT NULL,
    [Type] TINYINT NOT NULL, -- 0 to 255

    CONSTRAINT [PK_Author] PRIMARY KEY([Id])
);
GO

create TABLE [Career] (
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Title] NVARCHAR(160) NOT NULL,
    [Summary] NVARCHAR(2000) NOT NULL,
    [Url] NVARCHAR(1024) NULL,
    [DurationInMinutes] int NOT NULL,
    [Active] BIT not NULL,
    [Featured] BIT NOT NULL,
    [Tags] NVARCHAR(160) NOT NULL, -- 0 to 255

    CONSTRAINT [PK_Career] PRIMARY KEY([Id])
);
GO

create TABLE [Category] (
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Title] NVARCHAR(160) NOT NULL,
    [Url] NVARCHAR(1024) NULL,
    [Summary] NVARCHAR(2000) NOT NULL,
    [Order] int NOT NULL,
    [Description] TEXT not NULL,
    [Featured] BIT NOT NULL,

    CONSTRAINT [PK_Category] PRIMARY KEY([Id])
);
GO

create TABLE [Course] (
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Tag] NVARCHAR(20) NOT NULL,
    [Title] NVARCHAR(160) NULL,
    [Summary] NVARCHAR(2000) NOT NULL,
    [Url] NVARCHAR(1024) NOT NULL,
    [Level] TINYINT NOT NULL,
    [DurationInMinutes] INT NOT NULL,
    [CreatedAt] DATETIME NOT NULL DEFAULT(GETDATE()),
    [UpdatedAt] DATETIME NOT NULL,
    [Active] BIT NOT NULL,
    [Free] BIT NOT NULL,
    [Featured] BIT NOT NULL,
    [AuthorId] UNIQUEIDENTIFIER NOT NULL,
    [CategoryId] UNIQUEIDENTIFIER NOT NULL,
    [Tags] NVARCHAR(160) NOT NULL,

    CONSTRAINT [PK_Course] PRIMARY KEY([Id]),
    CONSTRAINT [FK_Course_Author_AuthorId] FOREIGN KEY([AuthorId]) REFERENCES [Author] ([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Course_Category_CategoryId] FOREIGN KEY([CategoryId]) REFERENCES [Category] ([Id]) ON DELETE NO ACTION,
);
GO

create TABLE [CareerItem] (
    [CareerId] UNIQUEIDENTIFIER NOT NULL,
    [CourseId] UNIQUEIDENTIFIER NOT NULL,
    [Title] NVARCHAR(160) NULL,
    [Description] TEXT not NULL,
    [Order] int NOT NULL,

    CONSTRAINT [PK_CareerItem] PRIMARY KEY([CourseId], [CareerId]),
    CONSTRAINT [FK_CareerItem_Career_CareerId] FOREIGN KEY([CareerId]) REFERENCES [Career] ([Id]),
    CONSTRAINT [FK_CareerItem_Course_CourseId] FOREIGN KEY([CourseId]) REFERENCES [Course] ([Id]),
);
GO

create TABLE [StudentCourse] (
    [CourseId] UNIQUEIDENTIFIER NOT NULL,
    [StudentId] UNIQUEIDENTIFIER NOT NULL,
    [Progress] TINYINT NOT NULL,
    [Favorite] BIT NOT NULL,
    [StartedAt] DATETIME NOT NULL DEFAULT(GETDATE()),
    [UpdatedAt] DATETIME NOT NULL,

    CONSTRAINT [PK_StudentCourse] PRIMARY KEY([CourseId], [StudentId]),
    CONSTRAINT [FK_StudentCourse_Course_CourseId] FOREIGN KEY([CourseId]) REFERENCES [Course] ([Id]),
    CONSTRAINT [FK_StudentCourse_Student_StudentId] FOREIGN KEY([StudentId]) REFERENCES [Student] ([Id]),
);
GO