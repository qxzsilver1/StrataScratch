select s1.loan_id, s1.rate_type, sum(s1.balance) as balance, sum(s1.balance)/total_balance * 100 as balance_share 
from submissions s1 
left join (
    select rate_type, sum(balance) as total_balance
    from submissions
    group by rate_type
) s2 on s1.rate_type=s2.rate_type
group by s1.loan_id;
