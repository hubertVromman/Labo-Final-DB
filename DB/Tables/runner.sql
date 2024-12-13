CREATE TABLE [dbo].[runner]
(
	[RunnerId]                     INT NOT NULL PRIMARY KEY IDENTITY,
    [Lastname]                     NVARCHAR (320) NOT NULL,
    [Firstname]                    NVARCHAR (320) NOT NULL,
    [Gender]                       CHAR (1) NULL,
    [BirthYear]                    INT NULL,
    [IsAnonymous]                  BIT NOT NULL Default 0,
)
