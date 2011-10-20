select a.iata_code, airline_name, nvl(replace (count(*),1),0) as "Number of Routes"
from city.route r, city.airline a
where r.iata_code (+) = a.iata_code
group by a.iata_code, airline_name
order by airline_name;