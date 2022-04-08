--Retrieve all info on the first 10 tenants (HINT: Use LIMIT)
Select * From tenants LIMIT '10';
--Retrieve the name, age, and gender of the first 10 tenants
Select name, age, gender  From tenants LIMIT '10';
--Retrieve all info on all tenants older than 65
Select * From tenants WHERE age > 65;
--Retrieve all info on all tenants in apartment with id 20
 SELECT * FROM tenants JOIN apartments ON tenants.apartment_id = apartments.id WHERE apartments.id = '20';
--Retrieve all info on all tenants in apartment with ids 20 or 21
SELECT * FROM tenants JOIN apartments ON tenants.apartment_id = apartments.id WHERE apartments.id = '20' OR apartments.id = '21';
--Retrieve the names of all doormen and the address where they work
SELECT doormen.name, address FROM doormen JOIN buildings ON doormen.building_id = buildings.id ;
--Geriatric Birthday! Update all tenants whose age is 90 to be 91
UPDATE tenants SET age = '91' WHERE age = '90';
--Delete all tenants whose age is greater than 65
DELETE FROM tenants WHERE age > '65';
--Change all doormen from building 3 to work night shifts.
UPDATE doormen SET shift = 'night' WHERE building_id = '3';
--Create one new tenant, put them in any apartment you want
INSERT INTO tenants VALUES (DEFAULT, 'GJ', '33', 'male', '1');
--Find just the ids for all apartments for building with id of 2
SELECT apartments.id FROM buildings JOIN apartments ON apartments.building_id = buildings.id WHERE buildings.id = '2';
--Find all info for apartments in building number 3 whose price is greater than $2300
SELECT * FROM buildings JOIN apartments ON apartments.building_id = buildings.id WHERE buildings.id = '3' AND apartments.price > '2300';

--////////////////////////////// REFFFFFFFFFFFFFS //////////////////////////////////
buildings = (id, name, address, num_floors)
apartments = (id, floor, name, price, sqft, bedrooms, bathrooms, building_id)
tenants = (id, name, age, gender, apartment_id)
doormen = (id, name, experience, shift, building_id)


