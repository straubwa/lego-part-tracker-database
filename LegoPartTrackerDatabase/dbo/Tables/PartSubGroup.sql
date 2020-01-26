CREATE TABLE [dbo].[PartSubgroup]
(
    [PartNumber]	VARCHAR (100) NOT NULL,
	[SubgroupId]		INT NOT NULL,
    [CreatedDate] DATETIME NOT NULL, 
    CONSTRAINT [PK_PartSubgroup] PRIMARY KEY CLUSTERED ([PartNumber] ASC),
    CONSTRAINT [FK_PartSubgroup_Subgroup_SubgroupId] FOREIGN KEY ([SubgroupId]) REFERENCES [dbo].[Subgroup] ([Id])
)
