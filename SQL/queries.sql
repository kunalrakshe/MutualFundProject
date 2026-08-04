## Top 5 Funds by AUM
SELECT scheme_name,aum

FROM fact_aum
JOIN dim_fund

USING(date)

ORDER BY aum DESC

LIMIT 5;

## Average NAV Per Month
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
year,
SUM(amount)

FROM fact_transactions
JOIN dim_date

USING(date)

WHERE transaction_type='SIP'

GROUP BY year;