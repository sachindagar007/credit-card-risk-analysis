-- 1 Overall Default Rate 
SELECT
    COUNT(*) AS total_customers,
    SUM(default_next_month) AS defaulters,
    ROUND(SUM(default_next_month)*100.0/COUNT(*),2) AS default_rate_pct
FROM credit_card_clean;

-- 22.12 % Customers Who Defaulted

--  Default Rate by Gender 

SELECT
    gender,
    COUNT(*) AS customers,
    SUM(default_next_month) AS defaulters,
    ROUND(SUM(default_next_month)*100.0/COUNT(*),2) AS default_rate_pct
FROM credit_card_clean
GROUP BY gender
ORDER BY default_rate_pct DESC;

-- 3 Default Rate by Education 

SELECT
    education_group,
    COUNT(*) AS customers,
    SUM(default_next_month) AS defaulters,
    ROUND(SUM(default_next_month)*100.0/COUNT(*),2) AS default_rate_pct
FROM credit_card_clean
GROUP BY education_group
ORDER BY default_rate_pct DESC;

-- 4 Default Rate by Martial Status   

SELECT
    marital_status,
    COUNT(*) AS customers,
    SUM(default_next_month) AS defaulters,
    ROUND(SUM(default_next_month)*100.0/COUNT(*),2) AS default_rate_pct
FROM credit_card_clean
GROUP BY marital_status
ORDER BY default_rate_pct DESC;

-- 5 Default Rate by Age group 

SELECT
    age_group,
    COUNT(*) AS customers,
    SUM(default_next_month) AS defaulters,
    ROUND(SUM(default_next_month)*100.0/COUNT(*),2) AS default_rate_pct
FROM credit_card_clean
GROUP BY age_group
ORDER BY default_rate_pct DESC;

--  6 Credit Limit vs Default

SELECT
    default_next_month,
    COUNT(*) AS customers,
    ROUND(AVG(LIMIT_BAL),2) AS avg_credit_limit
FROM credit_card_clean
GROUP BY default_next_month;


-- 7  Utilization vs Default 

SELECT
    default_next_month,
    ROUND(AVG(utilization_ratio),4) AS avg_utilization
FROM credit_card_clean
GROUP BY default_next_month;


-- 8 Payment vs Bill Comparison

SELECT
    default_next_month,
    ROUND(AVG(avg_bill_amt),2) AS avg_bill,
    ROUND(AVG(avg_pay_amt),2) AS avg_payment
FROM credit_card_clean
GROUP BY default_next_month;

-- 9 Delayed Month Impact 

SELECT
    delayed_months,
    COUNT(*) AS customers,
    SUM(default_next_month) AS defaulters,
    ROUND(SUM(default_next_month)*100.0/COUNT(*),2) AS default_rate_pct
FROM credit_card_clean
GROUP BY delayed_months
ORDER BY delayed_months;  

-- 10 Max Delay Impact 

SELECT
    max_delay,
    COUNT(*) AS customers,
    SUM(default_next_month) AS defaulters,
    ROUND(SUM(default_next_month)*100.0/COUNT(*),2) AS default_rate_pct
FROM credit_card_clean
GROUP BY max_delay
ORDER BY max_delay;

--  11 Risk Segment Analysis

SELECT
    risk_segment,
    COUNT(*) AS customers,
    SUM(default_next_month) AS defaulters,
    ROUND(SUM(default_next_month)*100.0/COUNT(*),2) AS default_rate_pct
FROM credit_card_clean
GROUP BY risk_segment
ORDER BY default_rate_pct DESC;

-- 12 High Risk Customers (Top 20)

SELECT
    ID,
    gender,
    age_group,
    education_group,
    LIMIT_BAL,
    avg_bill_amt,
    avg_pay_amt,
    utilization_ratio,
    delayed_months,
    max_delay
FROM credit_card_clean
ORDER BY delayed_months DESC, max_delay DESC
LIMIT 20;   
 
