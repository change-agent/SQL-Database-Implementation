create or replace
trigger city_timezone_update_insert
before insert or update of CITY_TIMEZONE on city
for each row
declare
allow_change char(5) := 'true';
begin 
if(substr(:new.city_timezone, 1, 3)) <> 'GMT' then
allow_change := 'false';
end if;
if(substr(:new.city_timezone, 4, 1)) <> '+'  and (substr(:new.city_timezone, 4, 1)) <> '-'  then
allow_change := 'false';
elsIF (substr(:new.city_timezone, 4, 1)='+') then
if(to_number(substr(:new.city_timezone, 5, 2)) > 14) then
allow_change:='false';
end if;
elsIF (substr(:new.city_timezone, 4, 1)='-') then
if(to_number(substr(:new.city_timezone, 5, 2)) > 12) then
allow_change:='false';
end if;
end if;
if(substr(:new.city_timezone, 7, 1)<>':') then
allow_change:='false';
end if;
if(to_number(substr(:new.city_timezone, 8, 2)) > 59) then
allow_change:='false';
end if;
if(to_number(substr(:new.city_timezone, 5, 2)) = 14) and (to_number(substr(:new.city_timezone, 8, 2)) <> 00) then
allow_change:='false';
end if;
if(substr(:new.city_timezone, 4, 1)) = '-' and (to_number(substr(:new.city_timezone, 5, 2)) = 12) AND (to_number(substr(:new.city_timezone, 8, 2)) <> 00) then
allow_change:='false';
end if;
if(allow_change='false') then
raise_application_error (-20001, 'can not update');
end if;
end;