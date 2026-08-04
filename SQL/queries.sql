SELECT

state,

COUNT(*)

FROM fact_transactions

GROUP BY state;