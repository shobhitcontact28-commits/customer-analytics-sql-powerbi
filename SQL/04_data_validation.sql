-- =====================================================
-- 04_data_validation.sql
-- Purpose: Fix inconsistent values and validate metrics
-- =====================================================

-- Remove unrealistic ages
UPDATE customers
SET Age = NULL
WHERE Age < 16;

-- Remove negative CLV
UPDATE customers
SET CustomerLifetimeValue = NULL
WHERE CustomerLifetimeValue < 0;

-- Handle zero purchases
UPDATE customers
SET
CustomerLifetimeValue = 0,
AverageOrderValue = NULL
WHERE TotalPurchases = 0;

-- Recalculate CLV
UPDATE customers
SET CustomerLifetimeValue =
TotalPurchases * AverageOrderValue
WHERE TotalPurchases > 0;