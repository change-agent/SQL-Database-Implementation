select c.country_code, c.country_name 
from city.country c, city.language_spoken ls, city.language l
where c.country_code = ls.country_code
and ls.language_code = l.language_code
and ls.language_code = (select language_code from city.language where language_name = initcap('&Enter_a_language'))
order by country_name;