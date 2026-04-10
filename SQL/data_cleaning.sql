CREATE TABLE credit_card_clean AS
SELECT
    ID,
    LIMIT_BAL,

    -- Gender
    CASE
        WHEN SEX = 1 THEN 'Male'
        WHEN SEX = 2 THEN 'Female'
        ELSE 'Unknown'
    END AS gender,

    -- Education (FIXED 🔥)
    CASE
        WHEN EDUCATION = 1 THEN 'Graduate School'
        WHEN EDUCATION = 2 THEN 'University'
        WHEN EDUCATION = 3 THEN 'High School'
        ELSE 'Others'
    END AS education_group,

    -- Marriage (we will fix after seeing your output)
    CASE
        WHEN MARRIAGE = 1 THEN 'Married'
        WHEN MARRIAGE = 2 THEN 'Single'
        WHEN MARRIAGE = 3 THEN 'Others'
        ELSE 'Others'
    END AS marital_status,

    AGE,

    PAY_0, PAY_2, PAY_3, PAY_4, PAY_5, PAY_6,

    BILL_AMT1, BILL_AMT2, BILL_AMT3,
    BILL_AMT4, BILL_AMT5, BILL_AMT6,

    PAY_AMT1, PAY_AMT2, PAY_AMT3,
    PAY_AMT4, PAY_AMT5, PAY_AMT6,

    default_next_month

FROM credit_card_raw;
