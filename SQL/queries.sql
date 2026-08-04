SELECT month,

AVG(nav)

FROM fact_nav
JOIN dim_date

USING(date)

GROUP BY month;