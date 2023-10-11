-- Get schema
SELECT 
s.name AS SchemaName,
t.name AS TableName
FROM sys.tables t
INNER JOIN sys.schemas s
ON t.schema_id = s.schema_id
AND	s.name = 'SalesLT'