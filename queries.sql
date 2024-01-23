-- Queries for the visual Data Analysis of Fraudulent Transaction
-- 1. Query for loading data for card holder 2 and 18 from the database

query = """

SELECT
    t.date AS date,
    ch.id AS card_holder_id, 
    cc.card AS credit_card_number,
    t.amount AS amount,
    t.id AS transaction_id, 
    m.id AS merchant_id,
    m.name AS merchant_name,
    mc.name AS merchant_category_name
FROM card_holder ch
JOIN credit_card cc ON ch.id = cc.cardholder_id
JOIN transaction t ON cc.card = t.card
LEFT JOIN merchant m ON t.id_merchant = m.id
LEFT JOIN merchant_category mc ON m.id_merchant_category = mc.id
WHERE ch.id IN (2, 18);

        """

-- 2. Query for loading data for card holder 25 from the database 

query = """

SELECT 
    t.date, 
    ch.id AS card_holder_id, 
    cc.card AS credit_card_number,
    t.amount,
    t.id AS transaction_id,
    m.id AS merchant_id,
    m.name AS merchant_name,
    mc.name AS merchant_category
FROM transaction t
JOIN credit_card cc ON t.card = cc.card
JOIN card_holder ch ON cc.cardholder_id = ch.id
JOIN merchant m ON t.id_merchant = m.id
LEFT JOIN merchant_category mc ON m.id_merchant_category = mc.id
WHERE ch.id = 25 AND t.date BETWEEN '2018-01-01' AND '2018-06-30'
ORDER BY t.date;

        """

-- Queries for the optional challenge on fraud detection

-- 3. loading data for all card holders from the database

query = """

SELECT
    t.date AS date,
    ch.id AS card_holder_id, 
    cc.card AS credit_card_number,
    t.amount AS amount,
    t.id AS transaction_id, 
    m.id AS merchant_id,
    m.name AS merchant_name,
    mc.name AS merchant_category_name
FROM card_holder ch
JOIN credit_card cc ON ch.id = cc.cardholder_id
JOIN transaction t ON cc.card = t.card
LEFT JOIN merchant m ON t.id_merchant = m.id
LEFT JOIN merchant_category mc ON m.id_merchant_category = mc.id;

        """

-- Extra Fraud analysis 

-- 4. query for amaunts less than $2 for all card holders
query = """

SELECT 
    ch.id,
    ch.name,
    COUNT(t.id) AS transaction_count
FROM 
    transaction t
INNER JOIN 
    credit_card cc ON t.card = cc.card
INNER JOIN 
    card_holder ch ON cc.cardholder_id = ch.id
WHERE 
    t.amount < '$2.00'::money
GROUP BY 
    ch.id, ch.name;

        """

-- fraud analysis transactions made between 7 and 9am

query = """

SELECT
    date,
    amount,
    card,
    id_merchant
FROM
    transaction
WHERE
    EXTRACT(HOUR FROM date) >= 7 AND EXTRACT(HOUR FROM date) < 9
ORDER BY
    amount DESC
LIMIT 100;

        """