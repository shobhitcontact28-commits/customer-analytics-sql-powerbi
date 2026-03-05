-- =====================================================
-- 05_feature_engineering.sql
-- Purpose: Create new analytical features
-- =====================================================

ALTER TABLE customers ADD HighValueCustomer VARCHAR(10);

UPDATE customers
SET HighValueCustomer =
CASE
    WHEN TotalPurchases >= 12 THEN 'Yes'
    ELSE 'No'
END;

-- Define repeat customer logic
UPDATE customers
SET RepeatCustomer =
CASE
    WHEN TotalPurchases > 1 THEN 'Yes'
    ELSE 'No'
END;