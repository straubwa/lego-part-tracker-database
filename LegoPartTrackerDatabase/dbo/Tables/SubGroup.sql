CREATE TABLE [dbo].[SubGroup]
(
	[Id] INT NOT NULL IDENTITY , 
	[GroupId] INT NOT NULL,
    [CreatedDate] DATETIME NOT NULL, 
    [Name] VARCHAR(400) NOT NULL,
    CONSTRAINT [PK_SubGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SubGroup_Group_GroupId] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([Id])
)
