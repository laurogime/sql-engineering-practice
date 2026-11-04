
-- Problem 05: Customers Without Bank Accounts
-- Difficulty: Easy
-- Date: 2026-11-04

-- The Data Governance team wants to identify customers
-- who do not have any bank accounts on record.

-- Tables: customers, accounts

-- Deliver: Customer ID, full name, and state.
-- Each qualifying customer must appear only once.

SELECT
    c.customer_id,
    CONCAT(c.last_name, ', ', c.first_name) AS full_name,
    c.state
FROM dbo.customers AS c
WHERE NOT EXISTS (
    SELECT 1
    FROM dbo.accounts AS a
    WHERE a.customer_id = c.customer_id
)
ORDER BY c.customer_id ASC;