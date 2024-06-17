select user_id, ROUND(SUM(IFNULL(listen_duration, 0)) / 60) as total_listen_duration, count(distinct song_id) as unique_song_count
from listening_habits
group by user_id;
