select count(distinct user_id)
from marketing_campaign
where user_id in (
    select user_id
    from marketing_campaign
    group by user_id
    having count(distinct created_at) > 1 and count(distinct product_id) > 1
) and concat((user_id), '_', (product_id)) not in (
    select concat((user_id), '_', (product_id)) as user_product
    from (
        select *, rank() over(partition by user_id order by created_at) as rnk
        from marketing_campaign
    ) t
    where rnk = 1
);
