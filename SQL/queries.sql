## Top 5 Funds by AUM
SELECT scheme_name,aum

FROM fact_aum
JOIN dim_fund

USING(date)

ORDER BY aum DESC

LIMIT 5;