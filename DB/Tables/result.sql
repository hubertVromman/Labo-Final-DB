CREATE TABLE [dbo].[result]
(
	[ResultId] INT NOT NULL PRIMARY KEY IDENTITY,
	RunnerID INT NOT NULL REFERENCES runner(RunnerId), 
	RaceID INT NOT NULL REFERENCES race(RaceId), 
	generalRank INT NOT NULL, 
	generalRankShown VARCHAR(10) NOT NULL, 
	genderRank INT NOT NULL, 
	time TIME NOT NULL, 
	speed DECIMAL(6, 2), 
	pace VARCHAR(5),
)
