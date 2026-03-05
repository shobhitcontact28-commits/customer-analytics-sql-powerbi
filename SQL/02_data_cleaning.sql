-- =====================================================
-- 02_data_cleaning.sql
-- Purpose: Clean missing values and standardize categories
-- =====================================================

-- Remove rows with missing CustomerID
DELETE FROM customers
WHERE CustomerID IS NULL OR CustomerID = '';

-- Standardize Gender
ALTER TABLE customers ADD Gender_Clean VARCHAR(20);

UPDATE customers
SET Gender_Clean =
CASE
    WHEN UPPER(Gender) = 'F' THEN 'Female'
    WHEN UPPER(Gender) = 'M' THEN 'Male'
    WHEN Gender IS NULL OR LOWER(Gender) = 'nan' THEN 'N/A'
    ELSE Gender
END;

ALTER TABLE customers DROP COLUMN Gender;

EXEC sp_rename 'customers.Gender_Clean', 'Gender', 'COLUMN';


-- Standardize Income Level
ALTER TABLE customers ADD IncomeLevel_Clean VARCHAR(20);

UPDATE customers
SET IncomeLevel_Clean =
CASE
    WHEN UPPER(IncomeLevel) IN ('VERY HIGH') THEN 'Very High'
    WHEN UPPER(IncomeLevel) IN ('HIGH','H') THEN 'High'
    WHEN UPPER(IncomeLevel) IN ('MEDIUM') THEN 'Medium'
    WHEN UPPER(IncomeLevel) IN ('LOW','L') THEN 'Low'
    WHEN IncomeLevel IS NULL OR LOWER(IncomeLevel)='nan' THEN 'N/A'
    ELSE 'N/A'
END;

ALTER TABLE customers DROP COLUMN IncomeLevel;

EXEC sp_rename 'customers.IncomeLevel_Clean', 'IncomeLevel', 'COLUMN';


-- Standardize Country
ALTER TABLE customers ADD Country_Clean VARCHAR(50);

UPDATE customers
SET Country_Clean =
CASE
    WHEN Country IS NULL OR LTRIM(RTRIM(Country))='' THEN 'N/A'
    ELSE Country
END;

ALTER TABLE customers DROP COLUMN Country;

EXEC sp_rename 'customers.Country_Clean','Country','COLUMN';


-- Standardize City
ALTER TABLE customers ADD City_Clean VARCHAR(50);

UPDATE customers
SET City_Clean =
CASE
    WHEN City IS NULL OR LTRIM(RTRIM(City))='' THEN 'N/A'
    ELSE City
END;

ALTER TABLE customers DROP COLUMN City;

EXEC sp_rename 'customers.City_Clean','City','COLUMN';