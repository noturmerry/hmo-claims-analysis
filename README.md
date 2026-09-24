# HMO Claims Analysis

## Project Overview

This project analyzes simulated healthcare claims data to examine healthcare utilization, claim spending, provider activity, member characteristics, claim outcomes, processing patterns, and high-cost claims.

The project demonstrates an end-to-end Data Analytics workflow using **Python, SQL, and Power BI**, with a focus on business-oriented healthcare and HMO analysis.

The objective is to transform claims data into structured metrics and insights that can support monitoring of healthcare costs, utilization, claim outcomes, and operational performance.

---

## Business Questions

This analysis addresses the following questions:

- What are the overall claim volumes and healthcare costs?
- How do claim volumes and costs change over time?
- Which healthcare service types generate the highest claim spending?
- How does claim performance vary across providers?
- How does healthcare utilization differ across member groups?
- What proportion of claims are approved, denied, or pending?
- How consistent are claim processing times across claim statuses?
- How concentrated are healthcare costs among high-value claims?
- Which members account for higher claim spending?
- Which providers handle a larger share of high-cost claims?
- What operational patterns can be observed from the claims data?

---

## Dataset

The project uses a **simulated HMO claims dataset** containing healthcare claim transactions and member-level information.

The dataset contains:

- **50,000 claims**
- **20,000 members**

### Claims Information

| Variable | Description |
|---|---|
| Claim_ID | Unique claim identifier |
| Member_ID | Unique member identifier |
| Claim_Date | Date of claim |
| Service_Type | Type of healthcare service |
| Provider | Healthcare provider |
| Claim_Amount | Amount associated with the claim |
| Claim_Status | Approved, Denied, or Pending |
| Processing_Days | Number of days required to process the claim |

### Member Information

| Variable | Description |
|---|---|
| Member_ID | Unique member identifier |
| Gender | Member gender |
| Age_Group | Member age category |
| Region | Geographic region |
| Membership_Type | Individual, Family, or Corporate |

> The dataset is simulated for portfolio and analytical demonstration purposes and does not contain real patient records.

---

## Analytical Workflow

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

---

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

The analysis compares claim volume, total claim spending, average claim amount, cost share, approval rate, and denial rate across service categories.

### 4. Provider Performance

Provider-level analysis examines:

- Claim volume
- Total claim spending
- Average claim amount
- Average processing time
- High-cost claim concentration

### 5. Member Analysis

Member-level analysis examines healthcare utilization and claim spending across:

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

Approved claims accounted for **88.15%** of all claims, while denied and pending claims accounted for **6.88%** and **4.97%**, respectively.

### Monthly Claims Trends

Monthly claim volume ranged from approximately **3,808 to 4,292 claims** during 2025.

February recorded the lowest claim volume, while August recorded the highest claim volume.

Total monthly claim spending ranged from approximately **₱18.47 million to ₱21.67 million**.

October recorded the highest monthly claim spending, while February recorded the lowest.

### Service Type

Inpatient services generated the highest total claim spending at approximately **₱99.64 million**.

Outpatient services had the highest claim volume with **17,388 claims**.

This demonstrates that the service type with the highest utilization volume was not necessarily the service type with the highest financial impact.

### Provider Performance

Provider A recorded the highest total claim spending at approximately **₱31.62 million**.

Provider H recorded the highest claim volume with **6,395 claims**, while Provider D recorded the lowest with **6,114 claims**.

Provider-level average claim amounts and processing times were relatively consistent across providers in the simulated dataset.

### Member Utilization

Member utilization was relatively consistent across the age groups, gender groups, regions, and membership types examined.

### High-Cost Claims

The top **5% of claims by claim amount** represented **5% of claim volume** but accounted for approximately **24.02% of total claim spending**.

The average high-cost claim was approximately **₱23,711**, compared with approximately **₱3,948** for regular claims.

Inpatient services accounted for the majority of high-cost claims.

---

## SQL Analysis

SQL was used to reproduce and extend selected Python analyses.

### SQL Techniques Demonstrated

- `SELECT`
- `FROM`
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

### SQL Business Analyses

- Claims by status
- Service type performance
- Provider performance
- Monthly claims trends
- Member-level claim spending
- High-cost claims
- High-cost claims by provider
- Approval rates by service type
- Denial rates by service type

The SQL results were compared with corresponding Python analyses to confirm consistency of calculated business metrics.

---

## Power BI Dashboard

The Power BI dashboard provides an interactive view of the key HMO claims metrics and business findings.

### Page 1 — HMO Claims Performance Dashboard

The first dashboard page focuses on overall claims performance and healthcare utilization.

Key components include:

- Total Members
- Total Claims
- Total Claim Amount
- Average Claim Amount
- Approval Rate
- Monthly Claim Volume
- Total Claim Amount by Service Type
- Claim Status Distribution
- Total Claim Amount by Provider
- Member Utilization by Age Group

### Page 2 — Claims Risk & Operations

The second dashboard page focuses on high-cost claims, financial exposure, and operational performance.

Key components include:

- High-Cost Claims
- High-Cost Spending
- Average Claim Amount
- Average Processing Days
- High-Cost Claims by Service Type
- Denial Rate by Service Type
- Average Processing Days by Service Type

### Dashboard Highlights

The dashboard allows users to explore:

- Overall claim performance
- Healthcare spending patterns
- Service-level cost differences
- Claim outcomes
- High-cost claim concentration
- Provider activity
- Processing performance
- Member utilization patterns

The Power BI dashboard file is available in the repository under:

`dashboard/HMO_Claims_Dashboard.pbix`

---

## Tools Used

| Tool | Purpose |
|---|---|
| Python | Data cleaning, analysis, and visualization |
| Pandas | Data manipulation and aggregation |
| Matplotlib | Data visualization |
| SQLite | SQL analysis and querying |
| Power BI | Interactive dashboard and business visualization |
| GitHub | Project documentation and version control |

---

## Project Structure

```text
hmo-claims-analysis/
│
├── HMO_Claims_Analytics.ipynb
├── README.md
│
├── data/
│   └── README.md
│
├── sql/
│   └── hmo_claims_analysis.sql
│
├── dashboard/
│   └── HMO_Claims_Dashboard.pbix
│
└── visualizations/
    ├── monthly_claim_volume.png
    ├── monthly_claim_cost.png
    ├── service_type_analysis.png
    ├── provider_analysis.png
    └── high_cost_claims.png
```

> The raw dataset is not included in the repository because the project uses simulated healthcare claims data for portfolio demonstration.

---

## Limitations

- The dataset is simulated and intended for portfolio demonstration.
- The analysis is descriptive and does not establish causal relationships.
- High-cost claims are defined using a percentile-based threshold rather than a clinical or financial policy threshold.
- Member-level findings should not be interpreted as clinical assessments.
- The analysis does not include detailed diagnosis, treatment, or medical procedure information.
- The analysis focuses on the variables available in the simulated dataset and may not capture all factors affecting healthcare costs or claim outcomes.
- Provider and member patterns should be interpreted within the context of the simulated dataset.

---

## Conclusion

This project demonstrates an end-to-end healthcare claims analytics workflow combining **Python, SQL, and Power BI**.

The analysis examines healthcare utilization, claim spending, service types, provider activity, member characteristics, claim outcomes, processing patterns, and high-cost claim concentration.

The project demonstrates practical Data Analyst skills in:

- Data validation
- Data cleaning
- Exploratory data analysis
- Business metric development
- Data aggregation
- SQL querying
- Relational data analysis
- Data visualization
- Dashboard development
- Business-oriented interpretation

The workflow demonstrates how healthcare claims data can be transformed into structured metrics and insights that support monitoring of utilization, costs, claim outcomes, and operational performance.

> **Note:** This project is intended for portfolio and skills demonstration purposes and does not represent actual HMO operations or real patient data.
