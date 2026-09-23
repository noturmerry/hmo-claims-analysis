# HMO Claims Analysis

## Project Overview

This project analyzes healthcare claims data to identify patterns in
claim utilization, healthcare costs, provider performance, member
characteristics, and claims processing.

The project demonstrates an end-to-end data analytics workflow using
**Python, SQL, and Power BI**, with a focus on business-oriented
healthcare and HMO analysis.

---

## Business Questions

The analysis addresses the following questions:

- What are the overall claim volumes and healthcare costs?
- How do claim volumes and costs change over time?
- Which healthcare service types generate the highest claim spending?
- How does claim performance vary across providers?
- How does healthcare utilization differ across member groups?
- What proportion of claims are approved, denied, or pending?
- How concentrated are healthcare costs among high-value claims?
- Which members and providers account for higher claim spending?
- What operational patterns can be observed in claim processing?

---

## Dataset

The project uses a simulated HMO claims dataset containing healthcare
claim transactions and member-level information.

The dataset includes information on:

- Claim ID
- Member ID
- Claim date
- Service type
- Provider
- Claim amount
- Claim status
- Processing days
- Gender
- Age group
- Region
- Membership type

The dataset contains **50,000 claims** and **20,000 members**.

> The dataset is simulated for portfolio and analytical demonstration
> purposes and does not contain real patient records.

---

## Analytical Workflow

The project follows an end-to-end analytics workflow:

```text
Raw Data
   ↓
Data Validation
   ↓
Data Cleaning
   ↓
Exploratory Data Analysis
   ↓
Business Metrics
   ↓
Python Analysis
   ↓
SQL Analysis
   ↓
Power BI Dashboard
   ↓
Business Insights
```
## Key Analysis

### 1. Overall Claims Performance

Key metrics include:

- Total Members
- Total Claims
- Total Claim Amount
- Average Claim Amount
- Approved Claims
- Approval Rate
- Denied Claims
- Denial Rate
- Pending Claims
- Member Utilization Rate
- Average Processing Days

### 2. Monthly Claims Trends

Monthly analysis examines:

- Claim volume
- Total claim spending
- Average claim amount

### 3. Service Type Analysis

Healthcare services analyzed include:

- Inpatient
- Emergency
- Outpatient
- Diagnostic
- Laboratory
- Pharmacy

The analysis compares claim volume, total claim spending, average claim
amount, and cost share across service categories.

### 4. Provider Performance

Provider analysis examines:

- Claim volume
- Total claim spending
- Average claim amount
- Average processing time
- High-cost claim concentration

### 5. Member Analysis

Member-level analysis examines utilization and claim spending across:

- Age groups
- Gender
- Region
- Membership type

### 6. Claims Status and Operations

The analysis compares:

- Approved claims
- Denied claims
- Pending claims
- Approval rates
- Denial rates
- Processing time

### 7. High-Cost Claims

High-cost claims are defined using the **95th percentile of claim amounts**.

The analysis examines:

- High-cost claim volume
- High-cost spending
- High-cost spending share
- High-cost claims by service type
- High-cost claims by provider
- Largest individual claims

---

## Key Findings

### Claims Status

Approved claims accounted for **88.15%** of all claims, while denied and
pending claims accounted for **6.88%** and **4.97%**, respectively.

### Service Type

Inpatient services generated the highest total claim spending at
approximately **₱99.64 million**.

Outpatient services had the highest claim volume with **17,388 claims**.

### Provider Performance

Provider A recorded the highest total claim spending at approximately
**₱31.62 million**.

Provider-level average claim amounts and processing times were relatively
consistent across providers.

### High-Cost Claims

The top 5% of claims by claim amount represented **5% of claim volume**
but accounted for approximately **24.02% of total claim spending**.

Inpatient services accounted for the majority of high-cost claims.

---

## SQL Analysis

SQL was used to reproduce and extend selected Python analyses.

SQL techniques demonstrated include:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `COUNT()`
- `SUM()`
- `AVG()`
- `CASE WHEN`
- `LEFT JOIN`
- Date-based aggregation
- `LIMIT`

SQL business analyses include:

- Claims by status
- Service type performance
- Provider performance
- Monthly claims trends
- Member-level claim spending
- High-cost claims
- Approval rates
- Denial rates

---

## Tools Used

| Tool | Purpose |
|---|---|
| Python | Data cleaning, analysis, and visualization |
| Pandas | Data manipulation and aggregation |
| Matplotlib | Data visualization |
| SQLite | SQL analysis |
| Power BI | Interactive dashboard |
| GitHub | Project documentation and version control |
