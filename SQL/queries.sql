## Top 5 Funds by AUM
SELECT scheme_name,aum

FROM fact_aum
JOIN dim_fund

USING(date)

ORDER BY aum DESC

LIMIT 5;

## Average NAV Per Month
SELECT month,

AVG(nav)

FROM fact_nav
JOIN dim_date

USING(date_key)

GROUP BY month;