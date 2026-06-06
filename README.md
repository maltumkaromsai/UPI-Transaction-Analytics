# UPI Transaction Analytics Dashboard

## Project Overview

This project analyzes 250,000 UPI transactions to uncover spending patterns, customer behavior, fraud risks, and transaction reliability trends using SQL, Python, and Power BI.

The objective was to transform raw transaction data into actionable business insights and build an interactive dashboard for decision-making.

---

## Tools Used

* SQL (MySQL)
* Python (Pandas, Matplotlib)
* Power BI

---

## Business Objectives

* Analyze transaction value across merchant categories, states, and banks.
* Understand customer spending behavior across age groups.
* Identify fraud-prone regions, banks, and devices.
* Evaluate transaction reliability across networks and payment channels.
* Build an interactive dashboard for business stakeholders.

---

## Analysis Performed

### Spending Analysis

* Spending by Merchant Category
* Spending by State
* Spending by Age Group
* Bank Market Share
* Peak Spending Hours

### Customer Behavior Analysis

* Spending Composition by Age Group
* Weekend vs Weekday Spending
* Average Transaction Value by Age Group
* Age-Group Contribution Analysis

### Risk Analysis

#### Fraud Analysis

* Fraud Rate by State
* Fraud Rate by Bank
* Fraud Rate by Device
* Fraud Exposure by State

#### Reliability Analysis

* Failure Rate by Bank
* Failure Rate by Device
* Failure Rate by Network

---

## Key Insights

### Spending Insights

* Shopping was the highest-value merchant category.
* Maharashtra generated the highest transaction value.
* SBI held the largest market share (~25%).

### Customer Behavior Insights

* Users aged 26–35 contributed approximately 35% of total transaction value.
* Spending behavior shifted from Shopping toward Utilities as age increased.
* Peak transaction activity occurred around 7 PM.
* Weekend spending accounted for roughly 28–29% of total spending across age groups.

### Risk Insights

* Karnataka and Rajasthan exhibited the highest fraud rates.
* Maharashtra had the highest fraud exposure due to its transaction volume.
* 3G networks showed the highest transaction failure rates.
* Web-based transactions exhibited the highest fraud rate among device types.

---

## Dashboard Overview

### Page 1: Executive Overview

* KPI Cards
* Spending by Category
* Spending by State
* Spending by Age Group
* Bank Market Share

### Page 2: Customer Behavior Analysis

* Spending Composition by Age Group
* Spending by Hour
* Age Group Contribution
* Average Transaction Value by Age Group

### Page 3: Risk Analysis

* Fraud Rate by State
* Fraud Exposure by State
* Failure Rate by Network
* Failure Rate by Bank
* Fraud Rate by Device

---

## Project Structure

```text
UPI-Transaction-Analytics/
│
├── notebooks/
│   └── UPI_Analysis.ipynb
│
├── dashboard/
│   └── UPI_Dashboard.pbix
│
├── images/
│   ├── executive_overview.png
│   ├── customer_behavior.png
│   └── risk_analysis.png
│
├── sql/
│   └── upi_analysis_queries.sql
│
└── README.md
```
