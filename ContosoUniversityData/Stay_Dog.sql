CREATE TABLE [dbo].[Stay_Dog]
(	
    [StayId] INT NOT NULL, 
    [DogId] INT NOT NULL, 
	CONSTRAINT Stay_Dog_pk PRIMARY KEY ([StayId], [DogId]),
	CONSTRAINT [FK_dbo.Stay_Dog_dbo.Stay_StayId] FOREIGN KEY ([StayId]) 
        REFERENCES [dbo].[Dog] ([DogId]) ON DELETE CASCADE,
	CONSTRAINT [FK_dbo.Stay_Dog_dbo.Dog_DogId] FOREIGN KEY ([DogId])
        REFERENCES [dbo].[Stay] ([StayId]) ON DELETE CASCADE,    
)
