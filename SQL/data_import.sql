create database credit_card_risk_analysis;
use credit_card_risk_analysis;


CREATE TABLE credit_card_raw (
    ID INT,
    LIMIT_BAL INT,
    SEX INT,
    EDUCATION INT,
    MARRIAGE INT,
    AGE INT,
    PAY_0 INT,
    PAY_2 INT,
    PAY_3 INT,
    PAY_4 INT,
    PAY_5 INT,
    PAY_6 INT,
    BILL_AMT1 DECIMAL(12,2),
    BILL_AMT2 DECIMAL(12,2),
    BILL_AMT3 DECIMAL(12,2),
    BILL_AMT4 DECIMAL(12,2),
    BILL_AMT5 DECIMAL(12,2),
    BILL_AMT6 DECIMAL(12,2),
    PAY_AMT1 DECIMAL(12,2),
    PAY_AMT2 DECIMAL(12,2),
    PAY_AMT3 DECIMAL(12,2),
    PAY_AMT4 DECIMAL(12,2),
    PAY_AMT5 DECIMAL(12,2),
    PAY_AMT6 DECIMAL(12,2),
    default_next_month INT
);

