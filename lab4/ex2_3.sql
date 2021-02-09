CREATE OR REPLACE FUNCTION insertion() RETURNS TRIGGER AS

$$

BEGIN
	INSERT INTO city(city_id, city, country_id) VALUES(NEW.city_id,NEW.city,NEW.country_id);
	RETURN NEW;
END;

$$

LANGUAGE 'plpgsql';

CREATE TRIGGER ex2_3
BEFORE INSERT
ON city
FOR EACH ROW
EXECUTE PROCEDURE insertion();
