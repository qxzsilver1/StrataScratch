select variety, COUNT(variety) as n_total_varieties
from iris
group by variety
order by variety;
