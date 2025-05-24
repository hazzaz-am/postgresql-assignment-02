-- Active: 1747442878604@@localhost@5432@conservation_db
CREATE DATABASE conservation_db;

CREATE TABLE rangers (
  ranger_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  region VARCHAR(50) NOT NULL
);

CREATE TABLE species (
  species_id SERIAL PRIMARY KEY,
  common_name VARCHAR(50) NOT NULL,
  scientific_name VARCHAR(50) NOT NULL,
  discovery_date DATE NOT NULL,
  conservation_status VARCHAR(50) NOT NULL
)

CREATE TABLE sightings (
  sighting_id SERIAL PRIMARY KEY,
  ranger_id INTEGER REFERENCES rangers(ranger_id),
  species_id INTEGER REFERENCES species(species_id),
  sighting_time DATE NOT NULL,
  location VARCHAR(50) NOT NULL,
  notes VARCHAR(200)
)

-- Problem 1
INSERT INTO rangers (name, region)
VALUES ('Derek Fox', 'Coastal Plains')

-- Problem 2
