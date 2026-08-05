## Table: dim_date

**Purpose:** Stores date information for reporting.

**Source:** Generated from date columns

| Column | Data Type | Description |
|--------|-----------|-------------|
| date_key | INTEGER | Primary key in YYYYMMDD format |
| date | DATE | Calendar date |
| day | INTEGER | Day of month |
| month | INTEGER | Month number |
| quarter | INTEGER | Quarter of the year |
| year | INTEGER | Year |

## Table: fact_nav

**Purpose:** Stores daily Net Asset Value (NAV) for each fund.

**Source:** nav_history.csv

| Column | Data Type | Description |
|--------|-----------|-------------|
| nav_id | INTEGER | Primary key |
| fund_key | INTEGER | Foreign key to dim_fund |
| date_key | INTEGER | Foreign key to dim_date |
| nav | REAL | Net Asset Value |

## Table: fact_transactions

**Purpose:** Stores investor transactions.

**Source:** investor_transactions.csv

| Column | Data Type | Description |
|--------|-----------|-------------|
| transaction_id | INTEGER | Primary key |
| fund_key | INTEGER | Foreign key to dim_fund |
| date_key | INTEGER | Foreign key to dim_date |
| transaction_type | TEXT | SIP, Lumpsum, or Redemption |
| amount | REAL | Transaction amount |
| state | TEXT | Investor's state |

## Table: fact_performance

**Purpose:** Stores mutual fund performance metrics.

**Source:** scheme_performance.csv

| Column | Data Type | Description |
|--------|-----------|-------------|
| performance_id | INTEGER | Primary key |
| fund_key | INTEGER | Foreign key to dim_fund |
| expense_ratio | REAL | Expense ratio (%) |
| return_1y | REAL | One-year return (%) |
| return_3y | REAL | Three-year return (%) |
| return_5y | REAL | Five-year return (%) |

## Table: fact_aum

**Purpose:** Stores Assets Under Management values.

**Source:** aum.csv

| Column | Data Type | Description |
|--------|-----------|-------------|
| aum_id | INTEGER | Primary key |
| fund_key | INTEGER | Foreign key to dim_fund |
| date_key | INTEGER | Foreign key to dim_date |
| aum | REAL | Assets Under Management |