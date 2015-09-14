CREATE VIEW [dbo].[View_ScrapPaper1]
	AS 
	
	SELECT S.StayId, S.StayDays 
	FROM [Stay] S 
		INNER JOIN [Stay_Dog] SD ON S.StayId = SD.StayId
		INNER JOIN [Dog] D ON SD.DogId = D.DogId
