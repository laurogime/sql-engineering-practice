-- Problem 03: Create a Customer Feedback Table
-- Difficulty: Easy
-- Topic: CREATE TABLE (DDL)
-- Date: 2026-10-31

-- The Customer Experience team needs a new table
-- to store feedback submitted by banking customers.

-- Table Name: customer_feedback

-- Requirements:
-- 1. feedback_id: Unique identifier, required.
-- 2. customer_id: Customer identifier, required.
-- 3. rating: Whole number from 1 to 5, required.
-- 4. feedback_text: Optional text, up to 500 characters.
-- 5. submitted_at: Date and time of submission, required.

-- Deliver: Create the table with appropriate
-- data types and constraints.


-- first attempt
CREATE TABLE dbo.customer_feedback (
    feedback_id INT PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    rating INT NOT NULL,
    feedback_text VARCHAR(1000) NULL,
    submitted_at DATE NOT NULL
);

-- second attempt
CREATE TABLE dbo.customer_feedback (
    feedback_id INT PRIMARY KEY,
    customer_id VARCHAR(100) NOT NULL,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    feedback_text VARCHAR(500) NULL,
    submitted_at DATETIME NOT NULL
);

-- third attempt
CREATE TABLE dbo.customer_feedback (
    feedback_id INT PRIMARY KEY,
    customer_id VARCHAR(100) NOT NULL,
    rating INT NOT NULL CHECK(rating BETWEEN 1 AND 5),
    feedback_text VARCHAR(500) NULL,
    submitted_at DATETIME NOT NULL
);