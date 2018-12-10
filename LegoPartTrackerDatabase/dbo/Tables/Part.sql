CREATE TABLE [dbo].[Part] (
    [Id]             INT            NOT NULL,
    [Color]          VARCHAR (100) NULL,
    [ElementId]      VARCHAR (100) NULL,
    [CategoryId]     INT NULL, 
    [Name]           VARCHAR (400) NOT NULL,
    [PartImageUrl]   VARCHAR (400) NULL,
    [PartNumber]     VARCHAR (100) NOT NULL,
    [PartUrl]        VARCHAR (400) NULL,
    [QuantityFound]  INT            NOT NULL,
    [QuantityNeeded] INT            NOT NULL,
    [SetNumber]      VARCHAR (100) NULL,
    [QuantityFoundDateChanged] DATETIME NULL , 
    CONSTRAINT [PK_Part] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Part_Set_SetNumber] FOREIGN KEY ([SetNumber]) REFERENCES [dbo].[Set] ([SetNumber]),
    CONSTRAINT [FK_Part_Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Parts_SetNumber]
    ON [dbo].[Part]([SetNumber] ASC);
GO

CREATE NONCLUSTERED INDEX [IX_Parts_PartNumber]
    ON [dbo].[Part]([PartNumber] ASC);
