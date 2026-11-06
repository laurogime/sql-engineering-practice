
-- Problem 06: Account Product Distribution
-- Difficulty: Easy
-- Date: 2026-11-06

-- The Retail Banking team wants to understand
-- how accounts are distributed across product types.

-- Table: accounts

-- Deliver: Product type and total number of accounts.
-- Order from the most common to the least common.

SELECT
    product_type,
    COUNT(*) AS total_accounts
FROM dbo.accounts
GROUP BY product_type
ORDER BY total_accounts DESC;