select distinct a.iata_code||a.route_number as "Route", d.city_name as "Origin City", c.city_name as "Destination City", to_char(flight_adepart_date, 'DD-Mon-YYYY HH:MI PM') as "Actual Departure Date", round((flight_aarrival_date - flight_adepart_date)*24,1) as "Flight Duration in Hrs" 
from city.flight a, city.route b, city.city c, (select city_code, city_name from city.city) d
where to_char(flight_adepart_date, 'DD-MM-YYYY HH:MI PM') is NOT NULL
and b.route_number = a.route_number
and b.from_city_code = c.city_code
and b.to_city_code = d.city_code;