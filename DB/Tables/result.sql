CREATE TABLE [dbo].[result]
(
	[ResultId] INT NOT NULL PRIMARY KEY IDENTITY,
	[RunnerId] INT NOT NULL REFERENCES runner(RunnerId), 
	[RaceId] INT NOT NULL REFERENCES race(RaceId), 
	GeneralRank INT NOT NULL, 
	GeneralRankShown VARCHAR(10) NOT NULL, 
	GenderRank INT NULL, 
	Time TIME NULL, 
	Speed DECIMAL(6, 2), 
	Pace VARCHAR(5),
)
