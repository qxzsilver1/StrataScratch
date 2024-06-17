select loan_id, count(case when (rate_type='fixed') then id else NULL end) as fixed, count(case when (rate_type='variable') then id else NULL end) as variable
from submissions
group by loan_id;
