select t.city, t.density
from (select city, population / area as density,
RANK() OVER (order by population / area desc) rank_desc, RANK() OVER (order by population / area ASC) rank_asc
from cities_population
where area <> 0) t
where t.rank_desc = 1 or t.rank_asc = 1;
