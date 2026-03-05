-- =====================================================
-- 06_star_schema.sql
-- Purpose: Create dimensional model for analytics
-- =====================================================

CREATE TABLE dim_customer (
CustomerID VARCHAR(50) PRIMARY KEY,
RegistrationDate DATE,
Age INT,
Gender VARCHAR(20),
IncomeLevel VARCHAR(20),
Country VARCHAR(50),
City VARCHAR(50)
);

CREATE TABLE dim_customer_preferences (
CustomerID VARCHAR(50),
FavoriteCategory VARCHAR(50),
SecondFavoriteCategory VARCHAR(50),
MobileAppUsage VARCHAR(20)
);

CREATE TABLE dim_customer_behavior (
CustomerID VARCHAR(50),
RepeatCustomer VARCHAR(10),
PremiumMember VARCHAR(10),
HasReturnedItems VARCHAR(10),
HighValueCustomer VARCHAR(10)
);

CREATE TABLE fact_customer_metrics (
CustomerID VARCHAR(50),
TotalPurchases INT,
AverageOrderValue DECIMAL(14,2),
CustomerLifetimeValue DECIMAL(16,2),
CustomerServiceInteractions INT,
EmailEngagementRate DECIMAL(6,4),
SocialMediaEngagementRate DECIMAL(6,4),
EmailConversionRate DECIMAL(6,4),
SocialMediaConversionRate DECIMAL(6,4),
SearchEngineConversionRate DECIMAL(6,4),
AverageSatisfactionScore DECIMAL(4,2)
);