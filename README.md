# Cloud Infrastructure Resource Optimization and Performance Analytics

> An end-to-end Data Analytics project that analyzes cloud infrastructure resource utilization to identify workload patterns, optimize resource allocation, detect anomalies, evaluate SLA risks, and generate actionable business insights using **Python, MySQL, SQL, and Power BI**.

---

## Project Overview

Cloud infrastructure environments continuously generate large volumes of operational data from virtual machines and workloads. Efficient analysis of this data enables organizations to improve resource utilization, reduce operational costs, detect abnormal workload behavior, and maintain Service Level Agreements (SLAs).

This project demonstrates a complete data analytics workflow, beginning with raw cloud infrastructure data and progressing through data cleaning, feature engineering, exploratory data analysis (EDA), SQL-based business analysis, and interactive Power BI dashboards.

---

## Objectives

The primary objectives of this project are to:

- Clean and preprocess raw cloud infrastructure data.
- Handle missing values and improve data quality.
- Engineer meaningful features for infrastructure monitoring.
- Perform exploratory data analysis to understand workload characteristics.
- Answer business questions using SQL.
- Detect anomalous workloads.
- Identify potential SLA risks.
- Build an interactive Power BI dashboard for decision-making.

---

# Tech Stack

| Category | Technologies |
|-----------|--------------|
| Programming | Python |
| Data Processing | Pandas, NumPy |
| Data Visualization | Matplotlib, Seaborn |
| Database | MySQL |
| Query Language | SQL |
| Dashboard | Power BI |
| Development Environment | Jupyter Notebook |
| Version Control | Git & GitHub |

---

# Dataset

The dataset contains operational information collected from cloud virtual machine workloads, including:

- VM ID
- Timestamp
- CPU Usage
- Memory Usage
- Network Traffic
- Power Consumption
- Executed Instructions
- Execution Time
- Energy Efficiency
- Task Type
- Task Priority
- Task Status

After preprocessing and feature engineering, the final dataset contains:

- **1,618,908 records**
- **26 features**

> **Note:**  
> The complete dataset is not included in this repository because it exceeds GitHub's file size limit. A representative sample dataset is provided for demonstration purposes.

---

# Project Workflow

```text
Raw Dataset
      │
      ▼
Data Cleaning
      │
      ▼
Feature Engineering
      │
      ▼
Exploratory Data Analysis (EDA)
      │
      ▼
SQL Business Analysis
      │
      ▼
Power BI Dashboard(On going)


# Data Cleaning

The following preprocessing steps were performed:

- Removed duplicate records
- Handled missing values using median imputation
- Converted timestamp to datetime format
- Standardized data types
- Removed invalid records
- Exported cleaned dataset

---

#  Feature Engineering

Several new analytical features were created to enhance business analysis.

### Utilization Category

Classifies each workload into:

- Underutilized
- Optimal
- Overloaded

based on CPU and Memory utilization.

---

### Efficiency Score

A custom metric calculated as:

```
Efficiency Score = Executed Instructions / Power Consumption
```

to evaluate computational efficiency.

---

###  Anomaly Detection

Applied the Interquartile Range (IQR) method to identify unusual workload behavior.

---

### Time-Based Features

Extracted:

- Date
- Hour
- Day of Week

to support temporal analysis.

---



# Exploratory Data Analysis (EDA)

Exploratory Data Analysis was performed to understand workload behavior and validate engineered features.

The analysis includes:

- CPU Usage Distribution
- Memory Usage Distribution
- Utilization Category Distribution
- Efficiency Score Distribution
- Anomaly Distribution
- CPU Usage by Task Type
- Power Consumption by Utilization Category

---

## Key Insights

- Most workloads operate within the **Optimal** utilization category.
- Resource utilization spans a broad operational range.
- A relatively small proportion of workloads are identified as anomalies.
- Engineered features provide additional operational insights beyond the raw data.

---

#  SQL Business Analysis

Business insights were generated using MySQL by answering questions such as:

- Which task types consume the highest CPU resources?
- Which workloads consume the highest power?
- Which utilization categories dominate the infrastructure?
- Which task priorities are associated with higher SLA risk?
- Which workloads are most energy efficient?
- Which workload types require optimization?
- How does resource utilization vary across different workload categories?

More than **20 business-oriented SQL queries** were developed for analysis.

---



# Business Value

This project demonstrates how cloud infrastructure data can be transformed into actionable insights that support:

- Resource optimization
- Infrastructure performance monitoring
- Capacity planning
- Operational efficiency
- Early anomaly detection
- SLA monitoring
- Data-driven decision making

---

# Skills Demonstrated

- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis
- SQL
- MySQL
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Data Visualization
- Business Analytics
- Anomaly Detection
- Power BI
- Git & GitHub

---

# 🔮 Future Improvements

- Develop an interactive Power BI dashboard.
- Integrate real-time cloud monitoring data.
- Build predictive models for resource utilization forecasting.
- Implement automated anomaly alerting.

---



If you found this project interesting, feel free to ⭐ the repository.
