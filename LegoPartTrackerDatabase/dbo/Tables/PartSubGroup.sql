CREATE TABLE [dbo].[PartSubGroup]
(
    [PartNumber]	VARCHAR (100) NOT NULL,
	[SubGroupId]		INT NOT NULL,
    [CreatedDate] DATETIME NOT NULL, 
    CONSTRAINT [PK_PartSubGroup] PRIMARY KEY CLUSTERED ([PartNumber] ASC),
    CONSTRAINT [FK_PartSubGroup_SubGroup_SubGroupId] FOREIGN KEY ([SubGroupId]) REFERENCES [dbo].[SubGroup] ([Id])
)
