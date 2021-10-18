USE master
GO

DECLARE @kill varchar(8000) = '';  
SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), session_id) + ';'  
FROM sys.dm_exec_sessions
WHERE database_id  = db_id('Club')

EXEC(@kill);
go

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'Club')
	DROP DATABASE Club;
GO