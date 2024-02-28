CREATE DATABASE reciclying_study;
USE reciclying_study;

CREATE TABLE countries(
	id INT NOT NULL AUTO_INCREMENT,
    country VARCHAR(255),
    country_population VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE participants(
	id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    country_participant VARCHAR(255),
    is_reclying INT,
    is_interested INT,
    country_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (country_id) REFERENCES countries(id)
);

CREATE TABLE materials(
	id INT NOT NULL AUTO_INCREMENT,
    material VARCHAR(255),
    country_id INT,
    participant_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(country_id) REFERENCES countries(id),
    FOREIGN KEY(country_id) REFERENCES participants(id)
);