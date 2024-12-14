
SELECT
       [JourneyID],
       [CustomerID],
       [ProductID],
       [VisitDate],
       [Stage],
       [Action],
	   COALESCE([Duration],[Avereage Duration]) AS [Duration]
FROM 
(
SELECT 
       [JourneyID],
       [CustomerID],
       [ProductID],
       [VisitDate],
       UPPER([Stage]) AS [Stage],
       [Action],
	   [Duration],
       AVG([Duration]) OVER (
	   PARTITION BY [VisitDate]
	   ) AS [Avereage Duration],
	   ROW_NUMBER()  OVER (
	   PARTITION BY [JourneyID], [CustomerID], [ProductID],[VisitDate],  UPPER([Stage]), [Action]
	   ORDER BY [JourneyID]
	   ) AS row_number
  FROM [MarketingAnalytics].[dbo].[customer_journey]
) AS subquery
where row_number = 1
