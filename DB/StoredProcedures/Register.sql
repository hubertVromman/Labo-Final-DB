CREATE PROCEDURE [dbo].[Register]
	@email     NVARCHAR(320),
	@password  NVARCHAR(320),
	@runnerId  INT
AS
BEGIN
	INSERT INTO [user] (Email, Password, RunnerId)
		VALUES (@email, HASHBYTES('SHA2_512', @password), @runnerId)
END
