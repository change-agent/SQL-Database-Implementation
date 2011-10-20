select t.city_code, city_name, count(city_tourist_code) as "Number of Tourist Attractions"
from city.tourist_attraction t, city.city c
where t.city_code = c.city_code
having count(city_tourist_code) =(select max(count(city_tourist_code)) from city.tourist_attraction GROUP BY city_code)
group by t.city_code, c.city_name
order by c.city_name;