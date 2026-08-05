# Mutual Fund Analytics Project

## Project Overview

This project analyzes mutual fund data using Python, SQL, SQLite, and Power BI. The objective is to clean raw datasets, design a star schema database, perform analytical SQL queries, and build interactive dashboards for business insights.

---

## Objectives

* Clean and preprocess mutual fund datasets.
* Design a SQLite star schema database.
* Load cleaned datasets into SQLite.
* Perform analytical SQL queries.
* Create Power BI dashboards.
* Document the complete data model and workflow.

---

## Tech Stack

* **Programming Language:** Python
* **Libraries:** Pandas, NumPy, SQLAlchemy, Matplotlib, Plotly
* **Database:** SQLite
* **Query Language:** SQL
* **Visualization:** Power BI
* **Version Control:** Git & GitHub
* **IDE:** Jupyter Notebook / VS Code

---

## Project Structure

```text
MutualFundProject/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── database/
│   └── bluestock_mf.db
│
├── notebooks/
│
├── sql/
│   ├── schema.sql
│   └── queries.sql
│
├── reports/
│   └── data_dictionary.md
│
├── dashboard/
│
├── requirements.txt
├── README.md
└── .gitignore
```

---

## Dataset Description

The project uses multiple datasets related to mutual funds, including:

* Fund Master
* NAV History
* Investor Transactions
* Scheme Performance
* AUM (if available)
* Other supporting datasets

---

## Data Cleaning

The following cleaning operations were performed:

### NAV History

* Converted dates to datetime format.
* Sorted data by AMFI code and date.
* Forward-filled missing NAV values.
* Removed duplicate records.
* Validated that NAV values are greater than zero.

### Investor Transactions

* Standardized transaction types.
* Validated transaction amounts.
* Corrected date formats.
* Validated KYC status values.

### Scheme Performance

* Converted return columns to numeric.
* Flagged invalid return values.
* Validated expense ratio range.

---

## Database Design

A star schema was implemented.

### Dimension Tables

* dim_fund
* dim_date

### Fact Tables

* fact_nav
* fact_transactions
* fact_performance
* fact_aum (if source data is available)

---

## Analytical SQL Queries

The project includes SQL queries such as:

1. Top 5 funds by AUM
2. Average NAV per month
3. SIP Year-over-Year (YoY) growth
4. Transactions by state
5. Funds with expense ratio below 1%
6. Highest one-year returns
7. Average expense ratio by category
8. Monthly investment amount
9. Average NAV by fund house
10. Total transactions by transaction type

---

## Power BI Dashboard

The dashboard can include:

* KPI Cards
* NAV Trend Analysis
* Monthly Investment Trend
* Fund Category Analysis
* Expense Ratio Comparison
* Transaction Type Distribution
* State-wise Transactions
* Interactive Slicers and Filters

---

## Deliverables

* Cleaned datasets
* SQLite database (`bluestock_mf.db`)
* Database schema (`schema.sql`)
* SQL queries (`queries.sql`)
* Data Dictionary (`data_dictionary.md`)
* Power BI dashboard
* Source code and notebooks

---

## Skills Demonstrated

* Python Programming
* Data Cleaning
* Exploratory Data Analysis (EDA)
* SQL
* SQLite
* Star Schema Design
* Data Modeling
* Power BI
* Git & GitHub
* Data Documentation

---

## How to Run the Project

1. Clone the repository.
2. Create a virtual environment.
3. Install dependencies using:

```bash
pip install -r requirements.txt
```

4. Run the data cleaning notebooks or Python scripts.
5. Execute `schema.sql` to create the database schema.
6. Load the cleaned datasets into `bluestock_mf.db`.
7. Run the SQL queries from `queries.sql`.
8. Open the Power BI dashboard to explore the results.

---

## Future Improvements

* Connect to live mutual fund APIs.
* Automate daily NAV updates.
* Add predictive analytics for fund performance.
* Deploy the dashboard online.
* Build an ETL pipeline for automated data refresh.

---

## Author

**Kunal Rakshe**

Data Analyst | Python | SQL | Power BI
