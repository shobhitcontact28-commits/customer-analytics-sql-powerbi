-- =====================================================
-- 07_business_analysis.sql
-- Purpose: Answer key business questions
-- =====================================================

-- Revenue by Country
SELECT
c.Country,
SUM(f.CustomerLifetimeValue) AS Total_Revenue
FROM fact_customer_metrics f
JOIN dim_customer c
ON f.CustomerID = c.CustomerID
GROUP BY c.Country
ORDER BY Total_Revenue DESC;


-- Q1 Premium vs Non Premium
SELECT
b.PremiumMember,
COUNT(*) AS Customers,
SUM(f.CustomerLifetimeValue) AS Total_Revenue,
AVG(f.CustomerLifetimeValue) AS Avg_CLV
FROM fact_customer_metrics f
JOIN dim_customer_behavior b
ON f.CustomerID=b.CustomerID
GROUP BY b.PremiumMember;


-- Q2 Email Engagement Impact
SELECT
CASE
WHEN EmailEngagementRate < 0.2 THEN 'Low'
WHEN EmailEngagementRate < 0.5 THEN 'Medium'
ELSE 'High'
END AS Engagement_Level,
AVG(CustomerLifetimeValue) AS Avg_CLV
FROM fact_customer_metrics
GROUP BY
CASE
WHEN EmailEngagementRate < 0.2 THEN 'Low'
WHEN EmailEngagementRate < 0.5 THEN 'Medium'
ELSE 'High'
END;


-- Q3 Income Level Revenue
SELECT
c.IncomeLevel,
AVG(f.CustomerLifetimeValue) AS Avg_CLV,
SUM(f.CustomerLifetimeValue) AS Total_Revenue
FROM fact_customer_metrics f
JOIN dim_customer c
ON f.CustomerID=c.CustomerID
GROUP BY c.IncomeLevel;


-- Q4 Category Revenue
SELECT
p.FavoriteCategory,
COUNT(*) Customers,
SUM(f.CustomerLifetimeValue) Revenue
FROM fact_customer_metrics f
JOIN dim_customer_preferences p
ON f.CustomerID=p.CustomerID
GROUP BY p.FavoriteCategory;


-- Q5 Satisfaction Impact
SELECT
CASE
WHEN AverageSatisfactionScore <5 THEN 'Low'
WHEN AverageSatisfactionScore <7 THEN 'Medium'
ELSE 'High'
END AS Satisfaction_Level,
AVG(CustomerLifetimeValue) Avg_CLV
FROM fact_customer_metrics
GROUP BY
CASE
WHEN AverageSatisfactionScore <5 THEN 'Low'
WHEN AverageSatisfactionScore <7 THEN 'Medium'
ELSE 'High'
END;