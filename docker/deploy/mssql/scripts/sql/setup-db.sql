/*
Enter custom T-SQL here that would run after SQL Server has started up. 
*/

CREATE DATABASE $(MSSQL_DATABASE);
GO

USE $(MSSQL_DATABASE);
GO

CREATE SCHEMA ds
GO

CREATE SCHEMA DW_ETL
GO

CREATE SCHEMA DW_ETL_LOG
GO

USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [schematic]    Script Date: 2023/10/30 下午 12:47:04 ******/
CREATE LOGIN [schematic] WITH PASSWORD=N'Du6kaCnd0NhqTSGDZmlJe9VbJnRkaA+1yNxD52Ki/Rg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [schematic] ENABLE
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [schematic]
GO


CREATE LOGIN [SVC_DS_DEPLOY] WITH PASSWORD=N'IRe7h+68RrmSTpoPkUXpGYFs6EFyKcKAGOeYgZcgooA=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [SVC_DS_DEPLOY] ENABLE
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [SVC_DS_DEPLOY]
GO

CREATE LOGIN [SVC_DS_JOB] WITH PASSWORD=N'IRe7h+68RrmSTpoPkUXpGYFs6EFyKcKAGOeYgZcgooA=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [SVC_DS_JOB] ENABLE
GO

ALTER SERVER ROLE [sysadmin] ADD MEMBER [SVC_DS_JOB]
GO
