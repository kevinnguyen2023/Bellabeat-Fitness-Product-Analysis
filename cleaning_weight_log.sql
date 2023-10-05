IF EXISTS (SELECT * FROM Bellabeat.dbo.weight_cleaned)

DROP TABLE Bellabeat.dbo.weight_cleaned

CREATE TABLE Bellabeat.dbo.weight_cleaned
(Id FLOAT, Date DATETIME2(7), WeightKg FLOAT)

INSERT INTO Bellabeat.dbo.weight_cleaned

SELECT 
	Id,
	Date,
	WeightKg

FROM Bellabeat.dbo.weightLogInfo