SELECT 
COUNT(DISTINCT CustomerID) AS Total_Customers,
SUM(CustomerLifetimeValue) AS Total_Revenue,
AVG(CustomerLifetimeValue) AS Avg_CLV,
AVG(TotalPurchases) AS Avg_Purchases
FROM fact_customer_metrics;