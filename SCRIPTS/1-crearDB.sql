USE master
GO
CREATE DATABASE club
ON
(	NAME = club_dat,
	FILENAME = 'c:\meprograms\bases\club\club_dat.mdf',
	SIZE = 10,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 5
)
LOG ON
(	NAME = club_log,
	FILENAME = 'c:\meprograms\bases\club\club_log.ldf',
	SIZE = 5,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 5
)