select l.user_id, balance
from (
    select distinct id, user_id, created_at, max(created_at) over (partition by user_id, type) most_recent
    from loans
    where type='Refinance'
) l inner join submissions s on l.id=s.loan_id
where most_recent=created_at;
