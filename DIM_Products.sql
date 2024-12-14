SELECT 
       [ProductID] AS [Product ID]
      ,[ProductName] AS [Product Name]
   -- ,[Category]
      ,[Price]
      ,CASE 
	   WHEN  [Price] <= 50 THEN 'Low'
	   WHEN  [Price] BETWEEN 50 AND 200 THEN 'Medium'
	   ELSE  'High'
	   END AS [Price Category]
  FROM [MarketingAnalytics].[dbo].[products]
