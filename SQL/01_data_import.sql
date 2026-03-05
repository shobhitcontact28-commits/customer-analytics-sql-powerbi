-- =====================================================
-- 01_data_import.sql
-- Purpose: Import raw CSV dataset into SQL Server
-- =====================================================

USE EcommerceDB;
GO

CREATE TABLE customers (
    CustomerID VARCHAR(50),
    RegistrationDate VARCHAR(50),
    Age VARCHAR(50),
    Gender VARCHAR(50),
    IncomeLevel VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    TotalPurchases VARCHAR(50),
    AverageOrderValue VARCHAR(50),
    CustomerLifetimeValue VARCHAR(50),
    FavoriteCategory VARCHAR(100),
    SecondFavoriteCategory VARCHAR(100),
    EmailEngagementRate VARCHAR(50),
    SocialMediaEngagementRate VARCHAR(50),
    MobileAppUsage VARCHAR(50),
    CustomerServiceInteractions VARCHAR(50),
    AverageSatisfactionScore VARCHAR(50),
    EmailConversionRate VARCHAR(50),
    SocialMediaConversionRate VARCHAR(50),
    SearchEngineConversionRate VARCHAR(50),
    RepeatCustomer VARCHAR(10),
    PremiumMember VARCHAR(10),
    HasReturnedItems VARCHAR(10)
);

BULK INSERT customers
FROM 'E:\SQL\Project 1 Data Warehouse\Scripts\customers.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0d0a',
    TABLOCK
);