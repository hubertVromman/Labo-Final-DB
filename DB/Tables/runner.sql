﻿CREATE TABLE [dbo].[runner]
(
	[RunnerId]                     INT NOT NULL PRIMARY KEY IDENTITY,
    [Lastname]                     NVARCHAR (320) NOT NULL,
    [Firstname]                    NVARCHAR (320) NOT NULL,
    [Gender]                       CHAR (2) NULL,
    [BirthYear]                    INT NULL,
)
