CREATE TABLE dim_fund (
    fund_key INTEGER PRIMARY KEY,
    amfi_code INTEGER UNIQUE,
    scheme_name TEXT,
    fund_house TEXT,
    category TEXT,
    subcategory TEXT,
    risk_grade TEXT
);

CREATE TABLE dim_date (
    date_key INTEGER PRIMARY KEY,
    date DATE,
    day INTEGER,
    month INTEGER,
    quarter INTEGER,
    year INTEGER
);

CREATE TABLE fact_nav (
    nav_id INTEGER PRIMARY KEY,
    fund_key INTEGER,
    date_key INTEGER,
    nav REAL,
    FOREIGN KEY (fund_key) REFERENCES dim_fund(fund_key),
    FOREIGN KEY (date_key) REFERENCES dim_date(date_key)
);

CREATE TABLE fact_transactions (
    transaction_id INTEGER PRIMARY KEY,
    fund_key INTEGER,
    date_key INTEGER,
    transaction_type TEXT,
    amount REAL,
    state TEXT,
    FOREIGN KEY (fund_key) REFERENCES dim_fund(fund_key),
    FOREIGN KEY (date_key) REFERENCES dim_date(date_key)
);

CREATE TABLE fact_performance (
    performance_id INTEGER PRIMARY KEY,
    fund_key INTEGER,
    one_year_return REAL,
    three_year_return REAL,
    five_year_return REAL,
    expense_ratio REAL,
    FOREIGN KEY (fund_key) REFERENCES dim_fund(fund_key)
);

CREATE TABLE fact_aum (
    aum_id INTEGER PRIMARY KEY,
    date_key INTEGER,
    fund_house TEXT,
    aum_lakh_crore REAL,
    aum_crore REAL,
    num_schemes INTEGER,
    FOREIGN KEY (date_key) REFERENCES dim_date(date_key)
);