CREATE PROCEDURE [dbo].[Login]
	@Email                     NVARCHAR (320),
	@Password                  NVARCHAR (320)
AS
BEGIN
	SELECT * FROM [user] JOIN runner ON runner.RunnerId = [user].RunnerId WHERE Email = @Email AND Password = HASHBYTES('SHA2_512', @Password);
END