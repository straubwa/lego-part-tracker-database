CREATE TABLE [dbo].[Set] (
    [SetNumber]   VARCHAR (100) NOT NULL,
    [Name]        VARCHAR (400) NOT NULL,
    [SetImageUrl] VARCHAR (400) NULL,
    [Theme]       VARCHAR (400) NULL,
    [ThemeId]     INT            NULL,
    CONSTRAINT [PK_Set] PRIMARY KEY CLUSTERED ([SetNumber] ASC)
);

