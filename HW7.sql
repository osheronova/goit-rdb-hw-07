USE hw03;

-- ============================================
-- Task 1: Extract year, month, day from date
-- ============================================

SELECT 
    id,
    date,
    YEAR(date) AS order_year,
    MONTH(date) AS order_month,
    DAY(date) AS order_day
FROM orders;

-- ============================================
-- Task 2: Add one day to date
-- ============================================

SELECT 
    id,
    date,
    DATE_ADD(date, INTERVAL 1 DAY) AS date_plus_one_day
FROM orders;

-- ============================================
-- Task 3: Convert date to timestamp (seconds)
-- ============================================

SELECT 
    id,
    date,
    UNIX_TIMESTAMP(date) AS date_timestamp
FROM orders;

-- ============================================
-- Task 4: Count rows within date range
-- ============================================

SELECT COUNT(*) AS row_count
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- ============================================
-- Task 5: Create JSON object from id and date
-- ============================================

SELECT 
    id,
    date,
    JSON_OBJECT('id', id, 'date', date) AS json_data
FROM orders;