

-- Who is the participant per country
SELECT countries.country, participants.first_name, participants.last_name
FROM countries
INNER JOIN participants ON countries.id = country_id;

-- Who recicles what material
SELECT participants.first_name, participants.last_name, materials_recycled.material
FROM participants
INNER JOIN materials_recycled ON participants.id = materials_recycled.participant_id