SELECT scheme_name,aum

FROM fact_aum
JOIN dim_fund

USING(fund_key)

ORDER BY aum DESC

LIMIT 5;