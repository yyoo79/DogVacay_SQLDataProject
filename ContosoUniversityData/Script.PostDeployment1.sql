/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

MERGE INTO Dog AS Target 
USING (VALUES 
        ('Piri'), 
        ('Loki'), 
        ('Spootie'),
		('Angel')
) 
AS Source ([FirstName]) 
ON Target.[FirstName] = Source.[FirstName] 
WHEN NOT MATCHED BY TARGET THEN 
INSERT ([FirstName]) 
VALUES ([FirstName]);

MERGE INTO Human AS Target
USING (VALUES
		('Jane'), 
        ('LokiMom'), 
        ('SpootieMom'),
		('AngelMom')
)
AS Source (FirstName)
ON Target.[FirstName] = Source.[FirstName] 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (FirstName)
VALUES (FirstName);

MERGE INTO Stay AS Target
USING (VALUES
		(1), 
		(2),
        (3),
        (4),
		(5)
)
AS Source (StayDays)
ON Target.StayDays = Source.StayDays 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (StayDays)
VALUES (StayDays);

MERGE INTO Stay_Dog AS Target
USING (VALUES
		(1,1), 
		(2,2),
        (3,3),
        (4,2),
		(5,3)
)
AS Source (StayId, DogId)
ON Target.StayId = Source.StayId 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (StayId, DogId)
VALUES (StayId, DogId);
