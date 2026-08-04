SELECT scheme_name,aum

FROM fact_aum
JOIN dim_fund

USING(amfi_code)


ORDER BY aum DESC

LIMIT 5;