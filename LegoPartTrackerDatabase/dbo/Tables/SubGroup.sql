CREATE TABLE [dbo].[Subgroup]
(
	[Id] INT NOT NULL IDENTITY , 
	[GroupId] INT NOT NULL,
    [CreatedDate] DATETIME NOT NULL, 
    [Name] VARCHAR(400) NOT NULL,
	[IconUrl] VARCHAR(400) NOT NULL,
    CONSTRAINT [PK_Subgroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Subgroup_Group_GroupId] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([Id])
)
