-- DROP DATABASE reciclying_study;
CREATE DATABASE reciclying_study;
USE reciclying_study;



CREATE TABLE countries(
	id INT NOT NULL AUTO_INCREMENT,
    country VARCHAR(255),
    country_population INT,
    PRIMARY KEY(id)
);

INSERT INTO countries
VALUES (default, 'Argentina', 45773884),
( default,'Brazil', 216422446),
( default,'Colombia', 52085168),
( default,'Uruguay', 3423108),
( default,'Paraguay', 6861524),
( default,'Chile', 19629590),
( default,'USA', 339996563),
( default,'Germany', 83294633),
( default,'France', 64756584),
( default,'Spain', 47519628),
( default,'Italy', 58870762),
( default,'Poland', 41026067),
( default,'Greece', 10341277),
( default,'The Netherlands', 17618299);



CREATE TABLE participants(
	id INT NOT NULL AUTO_INCREMENT,
    country_id INT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    is_recycling INT,
    is_interested INT,
	PRIMARY KEY(id),
    FOREIGN KEY(country_id) REFERENCES countries(id)
);

INSERT INTO participants (country_id, first_name, last_name, is_recycling, is_interested)
VALUES (2, 'Elizabeth','Do Santos', 1, 1),
(1, 'María','Perez', 1, 1),
(1,'Pablo','Gomez', 1, 1),
(3, 'Juan','Benitez', 0, 0),
(3, 'Raul','Rodriguez', 0, 1),
(4, 'Sabrina','Juarez', 1, 1),
(6, 'Pamela','', 1, 1),
(5, 'Sergio','Suarez', 0, 1),
(8, 'Ruth','Wolf', 0, 1),
(9, 'Juliette','Tout', 1, 1),
(2, 'Joao','Vermello', 0, 0),
(10, 'Manuel','Castilla', 0, 1),
(9, 'Francis','Jour', 0, 1),
(11, 'Alessandro','',0, 0),
(12, 'Katz','Wickzusk', 1, 1),
(13, 'Josephine','Papadopulos', 0, 1),
(14, 'Gene','Van Brook', 0, 0),
(6, 'Francismo','Pizarro', 0, 0),
(8, 'Patricia','Muller', 1, 1),
(10, 'Benicio','Valencia', 1, 1),
(5, 'Sara','Portillo', 1, 1),
(9, 'Celine','Magrit', 1, 1),
(4, 'Melina','Lopez', 0, 1),
(8, 'Benjamin','Schwartz', 1, 1);



CREATE TABLE materials_recycled(
	id INT NOT NULL AUTO_INCREMENT,
	participant_id INT,
	material VARCHAR(255),
	PRIMARY KEY(id),
    FOREIGN KEY(participant_id) REFERENCES participants(id)
);

INSERT INTO materials_recycled 
VALUES(default, 1, 'plastic'),
(default, 2, 'fabric'),
(default, 3, 'paper'),
(default, 4, 'not applicable'),
(default, 5, 'not applicable'),
(default, 6, 'paper and cardboard'),
(default, 7, 'batteries'),
(default, 8, 'not applicable'),
(default, 9, 'not applicable'),
(default, 10, 'batteries ans plastic'),
(default, 11, 'not applicable'),
(default, 12, 'not applicable'),
(default, 13, 'not applicable'),
(default, 14, 'not applicable'),
(default, 15, 'paper and cardboard'),
(default, 16, 'not applicable'),
(default, 17, 'not applicable'),
(default, 18, 'not applicable'),
(default, 19, 'cardboard'),
(default, 20, 'cardboard'),
(default, 21, 'batteries'),
(default, 22, 'batteries and paper'),
(default, 23, 'not applicable'),
(default, 24, 'plastic and paper');



-- ########## Insert one more row into participants table ########## 
INSERT INTO participants(country_id, first_name, is_recycling, is_interested)
VALUES (1, 'Juan', 0, 0);
-- ###################################################



-- ########## Update participants last name ########## 
UPDATE participants
SET last_name = 'Suarez'
WHERE first_name = 'Pamela' AND country_id='6';

UPDATE participants
SET last_name = NULL
WHERE first_name = 'Alessandro' AND country_id='11';
-- ###################################################




