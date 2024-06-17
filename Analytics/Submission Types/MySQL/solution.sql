select user_id
from loans
where type in ('Refinance', 'inSchool')
group by user_id
having count(distinct type)=2;
