CREATE TABLE FLIGHT_OLD
AS (select * from FLIGHT where flight_adepart_date >= sysdate - 395 AND flight_adepart_date <= sysdate - 30);
commit;

-- My reasoning for the above date restriction is this: 
-- 1. I used ">= sysdate - 395" because I am searching for flights which departed from the start of last financial year -- i.e. a year ago + the 30 days before the flights are archived (365 + 30 = 395).
-- 2. I used "flight_adepart_date <= sysdate - 30)" because I am restricting the search for flights which departed from the start of last financial year UNTIL the end of the financial year (i.e. before the 30 days).
-- There are equal signs on both statements because Lindsay said on Moodle, "Flights which span the financial year change...should be included in the move (e.g. a flight which takes off on the last day and lands on the first day of the next financial year should be included)"