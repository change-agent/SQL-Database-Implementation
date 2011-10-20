CREATE or REPLACE TRIGGER route_number_before_update
BEFORE UPDATE OF route_number ON route
FOR EACH ROW
BEGIN
UPDATE flight
SET route_number = :new.route_number
WHERE route_number = :old.route_number;
DBMS_OUTPUT.PUT_LINE ('Corresponding route number in the FLIGHT table has also been updated');
END;