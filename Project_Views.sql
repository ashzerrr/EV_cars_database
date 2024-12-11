

CREATE OR REPLACE VIEW Count_of_vehicles_in_district AS
SELECT legislative_district, COUNT(v.vin) AS vehicle_count
FROM vehicle v 
JOIN legislative_district USING (vin)
GROUP BY legislative_district;


CREATE OR REPLACE VIEW vehicles_cafv_Clean_alternative AS
SELECT cafv_type, (v.vin)
FROM cafv_type 
JOIN vehicle v USING(vin)
HAVING cafv_type IN
 ( SELECT cafv_type 
 FROM cafv_type
 WHERE cafv_type='Clean Alternative');
 

CREATE OR REPLACE VIEW location_of_hybrid_vehicles AS
SELECT e.ev_type AS Vehicle_EV_type, l.county,l.city,l.state,l.zip_code
FROM locations l
JOIN vehicle_location v ON l.location_id=v.location_id
JOIN ev_type e ON v.vin=e.vin
WHERE e.ev_type='Plug-in Hybrid';


CREATE OR REPLACE VIEW precise_vehicle_location AS
SELECT county, city, state, zip_code, geocoded_column, v.vin
FROM locations l
JOIN vehicle_location v ON l.location_id = v.location_id
JOIN vehicle_coordinates vc ON vc.vin = v.vin;


CREATE OR REPLACE VIEW electric_vehicle_count_by_city AS
SELECT l.city, COUNT(v.vin) AS electric_vehicle_count
FROM vehicle v
JOIN vehicle_location vl ON v.vin = vl.vin
JOIN locations l ON vl.location_id = l.location_id
JOIN ev_type e ON v.vin = e.vin
WHERE e.ev_type = 'Battery Electric Vehicle'
GROUP BY l.city;
