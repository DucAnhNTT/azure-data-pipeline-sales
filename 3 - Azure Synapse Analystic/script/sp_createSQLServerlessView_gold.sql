USE gold_db
GO

CREATE OR ALTER PROCEDURE CreateSQLServerlessView_gold @ViewName nvarchar(100)
AS 
BEGIN

DECLARE @statement NVARCHAR(MAX)

	SET @statement = N'CREATE OR ALTER VIEW '  + @ViewName +  ' AS
		SELECT *
		FROM
			OPENROWSET(
				BULK ''https://sgsalesproject.dfs.core.windows.net/gold/SalesLT/' + @ViewName + '/'',
				FORMAT = ''DELTA''
			) as [result]
	'

EXEC sp_executesql @statement

END
GO
