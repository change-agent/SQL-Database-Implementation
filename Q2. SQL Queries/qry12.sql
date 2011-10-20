select upper(city_name)||'('||country_code||')' as "City Name (Country Code)", 
count(city_code) as "Number of Duplicates", 
case when max (city_latitude) - min (city_latitude) < 1 then '< 1 degree' when max (city_latitude) - min (city_latitude) >= 1 then '>= 1 degree' end as "Latitude Variation", 
case when max (city_longitude) - min (city_longitude) < 1 then '< 1 degree' when max (city_longitude) - min (city_longitude) >= 1 then '>= 1 degree' end as "Longitude Variation", 
max (city_elevation) - min(city_elevation)||'m' as "Elevation Variation", 
round(((max(city_area) - min(city_area))/min(city_area)*100),1)||'%' as "City Area Variation"
from city.city
group by city_name,country_code
order by count(city_code) desc;