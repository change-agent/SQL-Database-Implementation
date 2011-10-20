select tourist_att_name, tourist_att_phone 
from city.tourist_attraction 
where ta_type = 'MU' 
order by trim(tourist_att_name);    -- This is here to ensure that the data sorts correctly; somebody has inserted spaces at the start of their TOURIST_ATT_NAME and it broke the alphabetical order.