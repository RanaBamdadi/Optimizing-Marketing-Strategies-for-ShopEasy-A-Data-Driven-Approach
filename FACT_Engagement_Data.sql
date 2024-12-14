SELECT 
       [EngagementID] AS [Engagement ID]
      ,[ContentID] AS [Content ID]
	  ,[CampaignID]
      ,[ProductID]
      ,UPPER(REPLACE ([ContentType], 'SOCIALMEDIA', 'Social Media'))  AS [Content Type]
      ,LEFT([ViewsClicksCombined], CHARINDEX('-', [ViewsClicksCombined])-1) AS Views
	  ,RIGHT([ViewsClicksCombined], LEN([ViewsClicksCombined])- CHARINDEX('-', [ViewsClicksCombined])) AS Clicks
	  ,[Likes]
      ,[EngagementDate]
FROM [MarketingAnalytics].[dbo].[engagement_data]
  WHERE [ContentType] != 'NEWSLETTER';
