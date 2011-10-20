select l.language_code as "Language Code", l.language_name as "Official Language", count (l.language_code) as "Country Count"
from city.language l, city.language_spoken ls
where l.language_code = ls.language_code
and langspoken_official = 'Y'
having count (l.language_code)>10
group by l.language_code,l.language_name
order by count (l.language_code) desc;