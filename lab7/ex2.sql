/* Elizaveta Kovanova in colaboration with Daniil Arapov */

 CREATE OR REPLACE FUNCTION retrievecustomers(start_id integer, end_id integer)
  RETURNS TABLE(first_name VARCHAR(45),last_name VARCHAR(45), address_id smallint) AS
$$
BEGIN
  IF start_id < 0 OR end_id < 0 THEN
    RAISE EXCEPTION 'Negative edge number' 
    USING HINT = 'You should specify positive edge numbers';
  ELSEIF end_id > 600 THEN
    RAISE EXCEPTION 'Edge number is too great' 
    USING HINT = 'You should specify edge numbers in range [1, 600]';
  ELSEIF start_id > end_id THEN
    RAISE EXCEPTION 'Incorrect slice edges'
    USING HINT = 'Start of the slice should be lesser than the end of the slice';
  END IF;
  
  FOR i IN start_id..end_id
  LOOP
    RETURN QUERY  
    SELECT customer.first_name, customer.last_name, customer.address_id FROM customer
    WHERE customer.address_id = i;
    
  END LOOP;
END;
$$
LANGUAGE 'plpgsql';

SELECT retrievecustomers(100,140)
