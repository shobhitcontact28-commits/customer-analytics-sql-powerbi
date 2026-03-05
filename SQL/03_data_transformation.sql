-- =====================================================
-- 03_data_transformation.sql
-- Purpose: Convert columns to correct data types
-- =====================================================

ALTER TABLE customers ALTER COLUMN RegistrationDate DATE;

ALTER TABLE customers ALTER COLUMN Age INT;

ALTER TABLE customers ALTER COLUMN TotalPurchases INT;

ALTER TABLE customers ALTER COLUMN AverageOrderValue DECIMAL(14,2);

ALTER TABLE customers ALTER COLUMN CustomerLifetimeValue DECIMAL(16,2);

ALTER TABLE customers ALTER COLUMN EmailEngagementRate DECIMAL(6,4);

ALTER TABLE customers ALTER COLUMN SocialMediaEngagementRate DECIMAL(6,4);

ALTER TABLE customers ALTER COLUMN AverageSatisfactionScore DECIMAL(4,2);

ALTER TABLE customers ALTER COLUMN EmailConversionRate DECIMAL(6,4);

ALTER TABLE customers ALTER COLUMN SocialMediaConversionRate DECIMAL(6,4);

ALTER TABLE customers ALTER COLUMN SearchEngineConversionRate DECIMAL(6,4);