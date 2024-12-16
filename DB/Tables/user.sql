CREATE TABLE [dbo].[user]
(
	[UserId] INT NOT NULL PRIMARY KEY IDENTITY,
	[Email] NVARCHAR(320) NOT NULL,
	[Password]                NVARCHAR (320) NOT NULL,
    [RunnerId]                INT NOT NULL REFERENCES runner(RunnerId),
    [Role]                      NVARCHAR (320) NOT NULL DEFAULT 'user',
    [AccessToken]               NVARCHAR (1000) NULL,
    [MaxRefreshTokenExpiration] DATETIME2 (7)  NULL,
    [RefreshToken]              NVARCHAR (44) NULL,
    [RefreshTokenExpiration]    DATETIME2 (7)  NULL,
    [IsActive] BIT NOT NULL DEFAULT 0, 
    [ActivationCode] NVARCHAR(50) NULL, 
    CONSTRAINT UK_Email UNIQUE(Email)   
)
