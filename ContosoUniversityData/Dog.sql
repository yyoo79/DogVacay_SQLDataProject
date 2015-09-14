CREATE TABLE [dbo].[Dog]
(
	[DogId] INT IDENTITY (1,1) NOT NULL PRIMARY KEY, 
    [FirstName] NCHAR(50) NULL, 
    [LastName] NCHAR(50) NULL, 
    [Sex] CHAR(1) NULL, 
    [Breed] NCHAR(50) NULL, 
    [Age] REAL NULL, 
    [DOB] SMALLDATETIME NULL, 
    [HumanId1] INT NULL,
	 CONSTRAINT [FK_dbo.Dog_dbo.Human_HumanId] FOREIGN KEY ([HumanId1]) 
        REFERENCES [dbo].[Human] ([HumanId]) ON DELETE CASCADE
)
