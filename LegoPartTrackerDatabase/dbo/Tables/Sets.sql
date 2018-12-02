CREATE TABLE [dbo].[Sets] (
    [SetNumber]   NVARCHAR (100) NOT NULL,
    [Name]        NVARCHAR (400) NOT NULL,
    [SetImageUrl] NVARCHAR (400) NULL,
    [Theme]       NVARCHAR (400) NULL,
    [ThemeId]     INT            NULL,
    CONSTRAINT [PK_Sets] PRIMARY KEY CLUSTERED ([SetNumber] ASC)
);

