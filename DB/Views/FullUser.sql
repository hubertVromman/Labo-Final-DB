﻿CREATE VIEW [dbo].[FullUser]
	AS SELECT UserId, Email, [Role], [user].RunnerId AS RunnerId, Firstname, Lastname FROM [user] JOIN runner ON runner.RunnerId = [user].RunnerId
