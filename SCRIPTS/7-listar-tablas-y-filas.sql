USE Club
GO

SELECT
    sysobjects.Name
    , sysindexes.Rows
FROM
    sysobjects
    INNER JOIN sysindexes
    ON sysobjects.id = sysindexes.id
WHERE
    type = 'U'
    AND sysindexes.IndId < 2
	AND sysindexes.Rows > 0
ORDER BY
	sysobjects.Name

-- MUESTRO SOLO LAS QUE TIENEN REGISTROS