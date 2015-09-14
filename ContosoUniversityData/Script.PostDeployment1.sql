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

MERGE INTO Human AS Target 
USING (VALUES 
        ('Jane'), 
        ('LokiMom'), 
        ('SpootieMom'),
		('AngelMom')
) 
AS Source ([FirstName]) 
ON Target.[FirstName] = Source.[FirstName] 
WHEN NOT MATCHED BY TARGET THEN 
INSERT ([FirstName]) 
VALUES ([FirstName]);

