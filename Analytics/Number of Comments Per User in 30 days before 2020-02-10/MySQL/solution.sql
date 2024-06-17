select user_id, sum(number_of_comments) as number_of_comments
from fb_comments_count
where created_at between date_sub('2020-02-10', interval 30 day) and '2020-02-10'
group by user_id;
