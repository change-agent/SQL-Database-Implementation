select round(avg(count(city.t.city_code)),1) as "Average Number of Attractions"
from city.tourist_attraction t, city.city c
where city.t.city_code(+) = city.c.city_code
group by city.c.city_name;