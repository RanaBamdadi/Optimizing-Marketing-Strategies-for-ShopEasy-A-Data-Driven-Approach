SELECT 
       c.[CustomerID]
      ,c.[CustomerName]
      ,c.[Email]
      ,c.[Gender]
      ,c.[Age]
      ,g.[Country]
      ,g.[City]
  FROM [MarketingAnalytics].[dbo].[customers] AS c
  LEFT JOIN [MarketingAnalytics].[dbo].[geography] AS g
  ON c.[GeographyID] = g.[GeographyID]
