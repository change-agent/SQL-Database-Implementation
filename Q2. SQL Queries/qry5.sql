select language_code, language_name 
from city.language
where language_code not in (select l.language_code from city.language l, language_spoken ls where l.language_code = ls.language_code);