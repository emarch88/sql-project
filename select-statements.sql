-- Bring all results from countries table
SELECT * FROM countries;

-- Bring all results from participants table
SELECT * FROM participants;

-- Bring all results from materials table
SELECT * FROM materials_recycled;

-- Select all different materials recycled/combination of materials recycled
SELECT DISTINCT  material FROM materials_recycled;

-- Alias in columns for participants in the study
SELECT id, first_name AS 'First Name', last_name AS 'Last Name' FROM participants;

-- Participants that did not inform their last name
SELECT id, first_name AS 'First Name', last_name AS 'Last Name' FROM participants
WHERE last_name IS NULL;

-- Participants that informed their last name
SELECT id, first_name AS 'First Name', last_name AS 'Last Name' FROM participants
WHERE last_name IS NOT NULL;

-- Filter participants with first name J
SELECT id, first_name AS 'First Name', last_name, is_recycling AS 'Last Name' FROM participants
WHERE first_name LIKE 'J%';

-- Most populated countries
SELECT country from countries
WHERE country_population> 40000000;