insert into city.city values (city.CITY_CODE_SEQ.nextval, 'New York City', +40.71, -074.00, 789.4, 10, 8175133, 'http://en.wikipedia.org/wiki/New_York_City', to_date('01/APR/10','DD/MON/RR'), 'GMT-04:00', (select country_code from city.country where country_name = 'United States'));
insert into city.city values (city.CITY_CODE_SEQ.nextval, 'Paris', +45.00, -189.00, 32.134, 90, 10042, 'http://en.wikipedia.org/wiki/Paris', to_date('10/MAR/10','DD/MON/RR'), 'GMT-10:00', (select country_code from city.country where country_name = 'France'));
insert into city.city values (city.CITY_CODE_SEQ.nextval, 'London', 30.00, -100.00, 20, 45, 5045, 'http://en.wikipedia.org/wiki/London', to_date('25/APR/09','DD/MON/RR'), 'GMT+01:00', (select country_code from city.country where country_name = 'United Kingdom'));
insert into city.city values (city.CITY_CODE_SEQ.nextval, 'Cupertino', +37.32, -122.03, 29.153, 72, 58302, 'http://en.wikipedia.org/wiki/Cupertino', to_date('01/APR/10','DD/MON/RR'), 'GMT-07:00', (select country_code from city.country where country_name = 'United States'));
insert into city.tourist_attraction values (97,1,'Ellis Island Immigration Museum', 'New York Harbor, NEW YORK CITY NEW YORK 10010, UNITED STATES OF AMERICA', '+0011 212 5614588', 'The Ellis Island Immigration Museum offers visitors a fascinating look into the immigrant experience.','MU');
insert into city.tourist_attraction values (97,2,'Madame Tussauds Museum', '234 West 42nd Street, NEW YORK CITY NEW YORK 10036, UNITED STATES OF AMERICA', '+0011 212 5129600', 'Featuring all your favorite celebs, historical figures, and athletes, Madame Tussauds NYC is a popular NY attraction in Midtown Manhattan.','MU');
insert into city.tourist_attraction values (98,1,'Louvre Museum', '75001 Mo Palais-Royal PARIS, FRANCE', '01 40 20 50 50', 'The Mus�e du Louvre � in English, the Louvre Museum or simply the Louvre � is one of the worlds largest museums, the most visited art museum in the world.','MU');
insert into city.tourist_attraction values (98,2,'Louvre Botanical Gardens', '2 Louvre Street PARIS, FRANCE', '02 45 23 89 78', 'The Louvre Botanical Gardens has some of the most beautiful plants in the world.','BG');
insert into city.tourist_attraction values (99,1,'London Botanical Gardens', '25 Botanical Street LONDON, ENGLAND', '145 623 502', 'The London Botanical Gardens is one of the most popular gardens in the UK','BG');
insert into city.tourist_attraction values (99,2,'British Art Museum', '120 Sessex Street LONDON, ENGLAND', '120 578 014', 'The British Art Museum contains beautiful paintings from around the world.','MU');
insert into city.tourist_attraction values (100,1,'Cupertino Historical Society','10185 North Stelling Road, CUPERTINO CALIFORNIA 95014, UNITED STATES OF AMERICA','+0011 1 408 9731495', 'The Cupertino Historical Society has an elaborate museum at the Cupertino Community Center, located next to Memorial Park, which houses the Cupertino Veterans Memorial.','MU');
insert into city.tourist_attraction values (100,2,'Euphrat Museum of Art', '21250 Stevens Creek Boulevard, CUPERTINO CALIFORNIA 95014, UNITED STATES OF AMERICA', '+0011 1 408 8648836', 'The Euphrat, located in the new Visual and Performing Arts Center at De Anza College, features artwork created by students and nonstudents.','MU');
commit;