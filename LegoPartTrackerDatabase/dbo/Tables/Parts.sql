CREATE TABLE [dbo].[Parts] (
    [Id]             INT            NOT NULL,
    [Color]          NVARCHAR (100) NOT NULL,
    [ElementId]      NVARCHAR (100) NULL,
    [Name]           NVARCHAR (400) NOT NULL,
    [PartImageUrl]   NVARCHAR (400) NOT NULL,
    [PartNumber]     NVARCHAR (100) NOT NULL,
    [PartUrl]        NVARCHAR (400) NULL,
    [QuantityFound]  INT            NOT NULL,
    [QuantityNeeded] INT            NOT NULL,
    [SetNumber]      NVARCHAR (100) NULL,
    [QuantityFoundDateChanged] DATETIME NULL , 
    CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Parts_Sets_SetNumber] FOREIGN KEY ([SetNumber]) REFERENCES [dbo].[Sets] ([SetNumber])
);


GO
CREATE NONCLUSTERED INDEX [IX_Parts_SetNumber]
    ON [dbo].[Parts]([SetNumber] ASC);

