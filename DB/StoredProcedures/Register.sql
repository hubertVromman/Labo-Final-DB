CREATE PROCEDURE [dbo].[Register]
	@email     NVARCHAR(320),
	@password  NVARCHAR(320),
	@runnerId  INT,
	@activationCode NVARCHAR(50)
AS
BEGIN
	INSERT INTO [user] (Email, Password, RunnerId, ActivationCode)
		OUTPUT inserted.UserId 
		VALUES (@email, HASHBYTES('SHA2_512', @password), @runnerId, @activationCode)
END
