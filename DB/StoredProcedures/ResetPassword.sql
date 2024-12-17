CREATE PROCEDURE [dbo].[ResetPassword]
	@NewPassword               NVARCHAR (320),
	@UserId                    INT,
	@ResetPasswordCode         NVARCHAR(50)
AS
BEGIN
	UPDATE [user] SET Password = HASHBYTES('SHA2_512', @NewPassword), ResetPasswordCode = NULL, ResetPasswordExpiration = NULL WHERE UserId = @UserId AND ResetPasswordCode = @ResetPasswordCode AND ResetPasswordExpiration > GETDATE()
END
