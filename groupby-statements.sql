-- People Recycling per country.
SELECT country_id, SUM(is_recycling) AS '# People Recycling' FROM participants
GROUP BY country_id;