-- ============================================================
-- HMO Claims Analytics
-- SQL Analysis
-- ============================================================
-- Dataset: Simulated HMO Claims Dataset
-- SQL Environment: SQLite
--
-- Business questions covered:
-- 1. What is the distribution of claims by status?
-- 2. Which service types have the highest claim spending?
-- 3. How do providers compare in claim activity and processing time?
-- 4. How do claims and spending change over time?
-- 5. Which members have the highest claim spending?
-- 6. Where are the high-cost claims concentrated?
-- 7. How are high-cost claims distributed across providers?
-- 8. What are the approval rates by service type?
-- 9. What are the denial rates by service type?
-- ============================================================


-- ============================================================
-- 1. CLAIMS BY STATUS
-- ============================================================

SELECT
    Claim_Status,
    COUNT(*) AS Claim_Count,
    SUM(Claim_Amount) AS Total_Claim_Amount,
    AVG(Claim_Amount) AS Average_Claim_Amount
FROM claims
GROUP BY Claim_Status
ORDER BY Claim_Count DESC;


-- ============================================================
-- 2. SERVICE TYPE ANALYSIS
-- ============================================================

SELECT
    Service_Type,
    COUNT(*) AS Claim_Count,
    SUM(Claim_Amount) AS Total_Claim_Amount,
    AVG(Claim_Amount) AS Average_Claim_Amount
FROM claims
GROUP BY Service_Type
ORDER BY Total_Claim_Amount DESC;


-- ============================================================
-- 3. PROVIDER PERFORMANCE
-- ============================================================

SELECT
    Provider,
    COUNT(*) AS Claim_Count,
    SUM(Claim_Amount) AS Total_Claim_Amount,
    AVG(Claim_Amount) AS Average_Claim_Amount,
    AVG(Processing_Days) AS Average_Processing_Days
FROM claims
GROUP BY Provider
ORDER BY Total_Claim_Amount DESC;


-- ============================================================
-- 4. MONTHLY CLAIMS TREND
-- ============================================================

SELECT
    strftime('%Y-%m', Claim_Date) AS Claim_Month,
    COUNT(*) AS Claim_Count,
    SUM(Claim_Amount) AS Total_Claim_Amount,
    AVG(Claim_Amount) AS Average_Claim_Amount
FROM claims
GROUP BY strftime('%Y-%m', Claim_Date)
ORDER BY Claim_Month;


-- ============================================================
-- 5. MEMBER-LEVEL CLAIM SPENDING
-- ============================================================
-- Combines claims and member information using Member_ID.

SELECT
    c.Member_ID,
    m.Gender,
    m.Region,
    m.Membership_Type,
    COUNT(c.Claim_ID) AS Claim_Count,
    SUM(c.Claim_Amount) AS Total_Claim_Amount,
    AVG(c.Claim_Amount) AS Average_Claim_Amount
FROM claims AS c
LEFT JOIN members AS m
    ON c.Member_ID = m.Member_ID
GROUP BY
    c.Member_ID,
    m.Gender,
    m.Region,
    m.Membership_Type
ORDER BY Total_Claim_Amount DESC
LIMIT 10;


-- ============================================================
-- 6. HIGH-COST CLAIMS
-- ============================================================
-- 95th-percentile threshold from the Python analysis:
-- ₱16,878.53

SELECT
    Service_Type,
    COUNT(*) AS High_Cost_Claims,
    SUM(Claim_Amount) AS High_Cost_Amount,
    AVG(Claim_Amount) AS Average_High_Cost_Claim
FROM claims
WHERE Claim_Amount >= 16878.53
GROUP BY Service_Type
ORDER BY High_Cost_Amount DESC;


-- ============================================================
-- 7. HIGH-COST CLAIMS BY PROVIDER
-- ============================================================

SELECT
    Provider,
    COUNT(*) AS High_Cost_Claims,
    SUM(Claim_Amount) AS High_Cost_Amount,
    AVG(Claim_Amount) AS Average_High_Cost_Claim
FROM claims
WHERE Claim_Amount >= 16878.53
GROUP BY Provider
ORDER BY High_Cost_Amount DESC;


-- ============================================================
-- 8. APPROVAL RATE BY SERVICE TYPE
-- ============================================================

SELECT
    Service_Type,
    COUNT(*) AS Claim_Count,
    SUM(
        CASE
            WHEN Claim_Status = 'Approved' THEN 1
            ELSE 0
        END
    ) * 100.0 / COUNT(*) AS Approval_Rate
FROM claims
GROUP BY Service_Type
ORDER BY Approval_Rate DESC;


-- ============================================================
-- 9. DENIAL RATE BY SERVICE TYPE
-- ============================================================

SELECT
    Service_Type,
    COUNT(*) AS Claim_Count,
    SUM(
        CASE
            WHEN Claim_Status = 'Denied' THEN 1
            ELSE 0
        END
    ) * 100.0 / COUNT(*) AS Denial_Rate
FROM claims
GROUP BY Service_Type
ORDER BY Denial_Rate DESC;


-- ============================================================
-- END OF SQL ANALYSIS
-- ============================================================
