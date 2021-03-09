/* Elizaveta Kovanova in colaboration with Daniil Arapov */

CREATE OR REPLACE FUNCTION retrievecustomers(start_id integer, end_id integer)
	RETURNS TABLE(first_name VARCHAR(45),last_name VARCHAR(45), address_id smallint) AS
$$
BEGIN
	IF start_id < 0 OR end_id < 0 OR end_id > 600 OR start_id > end_id THEN
		RAISE EXCEPTION 'Incorrect slice edges' 
		USING HINT = 'Make sure both edges lie within [0, 600]';
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

SELECT retrievecustomers(10,40)
