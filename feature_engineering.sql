ALTER TABLE credit_card_clean
ADD COLUMN avg_bill_amt DECIMAL(14,2);

UPDATE credit_card_clean
SET avg_bill_amt = (
    BILL_AMT1 + BILL_AMT2 + BILL_AMT3 +
    BILL_AMT4 + BILL_AMT5 + BILL_AMT6
) / 6;

ALTER TABLE credit_card_clean
ADD COLUMN utilization_ratio DECIMAL(10,4);

UPDATE credit_card_clean
SET utilization_ratio = 
    CASE 
        WHEN LIMIT_BAL = 0 THEN NULL
        ELSE avg_bill_amt / LIMIT_BAL
    END;
    
ALTER TABLE credit_card_clean
ADD COLUMN delayed_months INT;

UPDATE credit_card_clean
SET delayed_months =
    (CASE WHEN PAY_0 > 0 THEN 1 ELSE 0 END) +
    (CASE WHEN PAY_2 > 0 THEN 1 ELSE 0 END) +
    (CASE WHEN PAY_3 > 0 THEN 1 ELSE 0 END) +
    (CASE WHEN PAY_4 > 0 THEN 1 ELSE 0 END) +
    (CASE WHEN PAY_5 > 0 THEN 1 ELSE 0 END) +
    (CASE WHEN PAY_6 > 0 THEN 1 ELSE 0 END);
    
ALTER TABLE credit_card_clean
ADD COLUMN max_delay INT;

UPDATE credit_card_clean
SET max_delay = GREATEST(PAY_0, PAY_2, PAY_3, PAY_4, PAY_5, PAY_6);

ALTER TABLE credit_card_clean
ADD COLUMN age_group VARCHAR(20);

UPDATE credit_card_clean
SET age_group = CASE
    WHEN AGE < 30 THEN 'Below 30'
    WHEN AGE BETWEEN 30 AND 39 THEN '30-39'
    WHEN AGE BETWEEN 40 AND 49 THEN '40-49'
    ELSE '50+'
END;

ALTER TABLE credit_card_clean
ADD COLUMN risk_segment VARCHAR(20);

UPDATE credit_card_clean
SET risk_segment = CASE
    WHEN delayed_months >= 4 OR max_delay >= 3 THEN 'High Risk'
    WHEN delayed_months BETWEEN 2 AND 3 THEN 'Medium Risk'
    ELSE 'Low Risk'
END;

ALTER TABLE credit_card_clean
ADD COLUMN avg_pay_amt DECIMAL(14,2);

UPDATE credit_card_clean
SET avg_pay_amt = (
    PAY_AMT1 + PAY_AMT2 + PAY_AMT3 +
    PAY_AMT4 + PAY_AMT5 + PAY_AMT6
) / 6;