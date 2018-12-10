CREATE TABLE [dbo].[PartGroup]
(
    [PartNumber]	VARCHAR (100) NOT NULL,
	[GroupId]		INT NOT NULL
    CONSTRAINT [PK_PartGroup] PRIMARY KEY CLUSTERED ([PartNumber] ASC),
    CONSTRAINT [FK_PartGroup_Group_GroupId] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([Id])
)
