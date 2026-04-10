📊 Credit Card Financial Behavior & Risk Analysis
📌 Overview

This project focuses on analyzing credit card customer data to understand financial behavior and identify patterns associated with default risk. The analysis is performed using SQL on the UCI Credit Card dataset containing 30,000 customer records.

The goal is to explore how repayment behavior, credit utilization, and customer characteristics impact the likelihood of default.

🎯 Objective
Identify high-risk customers based on financial behavior
Analyze repayment patterns and delays
Understand credit utilization trends
Perform customer segmentation for risk assessment
🛠 Tools & Technologies
SQL (MySQL)
MySQL Workbench
📂 Dataset
Source: UCI Machine Learning Repository
Records: 30,000 customers
Features include:
Credit limit (LIMIT_BAL)
Demographics (Gender, Education, Marital Status, Age)
Repayment history (PAY_0 to PAY_6)
Bill amounts (BILL_AMT1 to BILL_AMT6)
Payment amounts (PAY_AMT1 to PAY_AMT6)
Default status (next month)
🔧 Project Workflow
1. Data Import
Created database and tables in MySQL
Imported CSV dataset using SQL
2. Data Cleaning
Verified row count and data consistency
Checked for duplicates and null values
Standardized categorical values:
Cleaned inconsistent EDUCATION and MARRIAGE categories
3. Feature Engineering

Created new analytical features:

Average bill amount
Average payment amount
Credit utilization ratio
Delayed months count
Maximum repayment delay
Age groups
Risk segmentation (Low, Medium, High)
📊 Key Analysis

The following analysis was performed using SQL:

Overall default rate
Default rate by gender, education, marital status, and age group
Credit limit comparison between defaulters and non-defaulters
Credit utilization impact on default
Payment vs bill comparison
Repayment delay analysis
Risk segmentation analysis
Identification of high-risk customers
🔍 Key Insights
Customers with more repayment delays have significantly higher default rates
High credit utilization is strongly associated with increased default risk
Customers who consistently pay less than their billed amount are more likely to default
Behavioral factors (repayment history and utilization) are stronger predictors than demographic attributes
Risk segmentation effectively identifies high-risk customers for monitoring
🚀 Project Outcome

This project demonstrates how SQL can be used to:

Clean and prepare real-world financial data
Perform exploratory data analysis
Engineer meaningful features
Generate actionable business insights
📌 Future Improvements
Build an interactive Power BI dashboard
Perform predictive modeling using Python
Enhance segmentation using advanced analytics
💼 Author

Sachin
Aspiring Data Analyst
