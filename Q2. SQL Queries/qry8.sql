select iata_code||route_number as "Route", to_char(flight_sdep_date,'DD-Mon-YYYY  HH:MI AM') as "Scheduled Departure", to_char(flight_sarr_date,'DD-Mon-YYYY  HH:MI AM') as "Scheduled Arrival"
from city.flight
where flight_sdep_date >= to_date('24/OCT/11 09:00 AM','DD/MON/RR HH:MI AM')
and flight_sdep_date <= to_date('26/OCT/11 10:00 PM','DD/MON/RR HH:MI PM')
order by flight_sdep_date;   -- I added this to display the query results in a more logical, expected way (chronological sort).