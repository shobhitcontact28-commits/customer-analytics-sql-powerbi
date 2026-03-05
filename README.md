# Customer Analytics & Revenue Insights Dashboard

An end-to-end data analytics project that explores customer behavior, revenue drivers, and segmentation using **SQL Server and Power BI**.

The project covers the complete analytics workflow:

• Raw data ingestion  
• Data cleaning and validation  
• Feature engineering  
• Dimensional data modeling (star schema)  
• Business analysis using SQL  
• Interactive dashboard visualization in Power BI  

---

# Project Overview

Understanding customer behavior is critical for e-commerce businesses to improve revenue and customer retention.

This project analyzes a dataset of ~9,000 customers to answer key business questions related to:

- Customer lifetime value
- Customer segmentation
- Product category performance
- Marketing engagement impact
- Customer satisfaction influence on revenue

The insights are visualized through an **interactive Power BI dashboard**.

---

# Tools & Technologies

**SQL Server (SSMS)**  
Data cleaning, validation, and transformation.

**Power BI**  
Interactive dashboard creation and visualization.

**GitHub**  
Project documentation and version control.

---

# Dataset

The dataset contains customer-level information including:

### Customer Information
- CustomerID
- RegistrationDate
- Age
- Gender
- IncomeLevel
- Country
- City

### Purchase Metrics
- TotalPurchases
- AverageOrderValue
- CustomerLifetimeValue

### Customer Preferences
- FavoriteCategory
- SecondFavoriteCategory
- MobileAppUsage

### Marketing Engagement
- EmailEngagementRate
- SocialMediaEngagementRate

### Customer Experience
- AverageSatisfactionScore
- CustomerServiceInteractions

### Conversion Metrics
- EmailConversionRate
- SocialMediaConversionRate
- SearchEngineConversionRate

---

# Data Cleaning Process (SQL)

Several data quality issues were identified and resolved:

### Missing Values
Handled missing values in fields such as:

- Gender
- IncomeLevel
- Country
- City
- FavoriteCategory

Standardized missing values as **N/A** where appropriate.

### Data Type Conversion

Converted incorrect data types from VARCHAR to appropriate formats:

| Column | Final Type |
|------|------|
RegistrationDate | DATE |
Age | INT |
TotalPurchases | INT |
AverageOrderValue | DECIMAL |
CustomerLifetimeValue | DECIMAL |

### Data Validation

Performed validation checks including:

- Removing unrealistic ages
- Fixing negative lifetime values
- Handling zero purchase scenarios
- Recalculating Customer Lifetime Value

### Feature Engineering

Created new analytical fields:

- **HighValueCustomer** → Customers with ≥ 12 purchases
- **RepeatCustomer** → Customers with more than one purchase

---

# Data Modeling

A **Star Schema** was created to improve analytical performance.

### Fact Table

`fact_customer_metrics`

Contains measurable metrics:

- TotalPurchases
- AverageOrderValue
- CustomerLifetimeValue
- Engagement metrics
- Conversion rates
- Satisfaction score

### Dimension Tables

`dim_customer`  
Customer demographic information

`dim_customer_preferences`  
Customer product preferences

`dim_customer_behavior`  
Customer behavioral indicators

This modeling approach improves analytical queries and Power BI performance.

---

# Business Questions Answered

The project explores several key analytical questions.

### 1. Do premium members generate more revenue?

Result:  
Premium membership did not significantly increase customer lifetime value in this dataset.

---

### 2. Does email engagement influence purchasing behavior?

Customers were segmented into:

- Low Engagement
- Medium Engagement
- High Engagement

Higher engagement showed **slightly higher lifetime value**, but purchase frequency remained relatively stable.

---

### 3. Do higher-income customers generate more revenue?

Very high income customers generated the **highest lifetime value**, indicating strong correlation between income and revenue contribution.

---

### 4. Which product categories generate the most revenue?

Top revenue-generating categories included:

- Beauty
- Electronics
- Clothing

This insight helps identify high-performing product segments.

---

### 5. Does customer satisfaction influence revenue?

Customers were segmented into:

- Low Satisfaction
- Medium Satisfaction
- High Satisfaction

Medium satisfaction customers showed slightly higher lifetime value compared to other groups.

---

# Power BI Dashboard

The Power BI dashboard visualizes the key insights from the analysis.

### Dashboard Features

**Executive KPIs**

- Total Customers
- Total Revenue
- Average Customer Lifetime Value
- Average Purchases per Customer

**Customer Segmentation**

- Revenue by Income Segment
- Revenue by Product Category

**Customer Behavior**

- Customer Value by Membership Status
- Customer Value by Satisfaction Level

**Geographic Analysis**

- Top Revenue Generating Countries

### Interactive Filters

The dashboard includes slicers for:

- Country
- Income Level
- Favorite Category

These filters allow dynamic exploration of the dataset.

---

# Dashboard Preview

![Dashboard Preview](dashboard/dashboard_preview.png)

---

# Project Workflow
Raw Dataset
↓
SQL Data Cleaning
↓
Data Validation & Transformation
↓
Feature Engineering
↓
Star Schema Modeling
↓
Business Analysis Queries
↓
Power BI Dashboard

---

# Repository Structure

customer-analytics-sql-powerbi

data/
customers.csv

sql/
00_database_setup.sql
01_data_import.sql
02_data_cleaning.sql
03_data_transformation.sql
04_data_validation.sql
05_feature_engineering.sql
06_star_schema.sql
07_business_analysis.sql

dashboard/
customer_dashboard.pbix
dashboard_preview.png

---

# Key Insights

- Income level strongly correlates with customer lifetime value.
- Product category preference influences total revenue contribution.
- Premium membership does not necessarily increase revenue.
- Customer satisfaction does not always translate to higher purchasing behavior.
- Geographic segmentation reveals top-performing markets.

---

# What This Project Demonstrates

This project showcases skills in:

- SQL data cleaning and transformation
- Data validation and quality checks
- Feature engineering
- Dimensional data modeling
- Analytical SQL querying
- Power BI dashboard development
- Business insight generation

