select country_name, city_name
from city.city ci, city.country co 
where ci.country_code = co.country_code
and
to_number(substr(ci.city_timezone, 5,2)) = 
(select max (to_number(substr(ci.city_timezone, 5,2)))
from city.city ci, city.country co 
where ci.country_code = co.country_code);