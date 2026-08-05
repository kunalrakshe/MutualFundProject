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
SELECT fp.scheme_name, fp.return_1yr_pct
FROM fact_performance as fp
JOIN dim_fund as df  USING(amfi_code)
ORDER BY fp.return_1yr_pct DESC
LIMIT 10;

## 7.Average Expense Ratio by Category
SELECT category,
AVG(expense_ratio_pct) As average_expense_ratio
FROM dim_fund
GROUP BY category;

## 8.Monthly Investment Amount
SELECT
    strftime('%Y-%m', transaction_date) AS month,
    SUM(amount_inr) AS total_investment
FROM fact_transactions
GROUP BY strftime('%Y-%m', transaction_date)
ORDER BY month

## 9.Average NAV by Fund House
SELECT fund_house,
AVG(nav) AS average_nav
FROM fact_nav
JOIN dim_fund USING(amfi_code)
GROUP BY fund_house;