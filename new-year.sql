SELECT YEAR(GETDATE()) AS [Year]
GO
SELECT CONVERT(varchar(4), GETDATE(), 126) AS [Year]
GO
SELECT DATEPART(YEAR,GETDATE()) AS [Year]
GO
SELECT DATEPART(YEAR,GETDATE()) AS [Year]
GO
SELECT DATENAME(YEAR,GETDATE()) AS [Year]
GO

SELECT FORMAT(GETDATE(),'yyyy') AS [Year]