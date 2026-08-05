## 1.Top 5 Funds by AUM
SELECT scheme_name,aum
FROM fact_aum
JOIN dim_fund
USING(fund_key)
ORDER BY aum DESC
LIMIT 5;

## 2.Average NAV Per Month
SELECT
    d.year,
    d.month,
    AVG(f.nav) AS average_nav
FROM fact_nav f
JOIN dim_date d
ON f.date = d.date
GROUP BY d.year, d.month
ORDER BY d.year, d.month;

## 3.SIP YOY Growth
SELECT
    d.year,
    SUM(t.amount_inr) AS total_sip_amount
FROM fact_transactions t
JOIN dim_date d
ON t.transaction_date = d.date_key
WHERE t.transaction_type = 'SIP'
GROUP BY d.year
ORDER BY d.year;

## 4.Transactions By State
SELECT
state,
    COUNT(*) AS transaction_count
FROM fact_transactions
GROUP BY state;

## 5.Expense Ratio Below 1%
SELECT df.scheme_name
FROM dim_fund AS df
JOIN fact_performance AS fp
ON df.amfi_code = fp.amfi_code
WHERE df.expense_ratio_pct < 1;

## 6.Highest 1-Year Return 
