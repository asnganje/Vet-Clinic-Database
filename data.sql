/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Agumon', date '2020-02-03', 0, true, 10.23);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Gabumon', '2018-11-15', 2, true, 8);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Pikachu', '2021-01-07', 1, false, 15.04);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Devimon', '2017-05-12', 5, true, 11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Charmander', date '2020-02-08', 0, false, -11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Plantmon', date '2021-11-15', 2, true, -5.7);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Squirtle', date '1993-04-2', 3, false, -12.13);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Angemon', date '2005-06-12', 1, true, -45);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Boarmon', date '2005-06-07', 7, true, 20.4);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Blossom', date '1998-10-13', 3, true, 17);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  
VALUES ('Ditto', date '2022-05-14', 4, true, 22);

/* Populate owners table with data. */
 INSERT INTO owners(full_name, age) VALUES('Sam Smith', 34);
 INSERT INTO owners(full_name, age) VALUES('Jennifer Orwell', 19);
 INSERT INTO owners(full_name, age) VALUES('Bob', 45);
 INSERT INTO owners(full_name, age) VALUES('Melody Pond', 77);
 INSERT INTO owners(full_name, age) VALUES('Dean Winchester', 14);
 INSERT INTO owners(full_name, age) VALUES('Jodie Whittaker', 38);

 INSERT INTO species(name) VALUES('Pokemon');
 INSERT INTO species(name) VALUES('Digimon');


 UPDATE animals SET species_id=(SELECT id FROM species WHERE species.name LIKE '%mon' LIMIT 1) WHERE name LIKE '%mon';
 UPDATE animals SET species_id=(SELECT id FROM species WHERE species.name NOT LIKE 'Poke%' LIMIT 1) WHERE name NOT LIKE '%mon';

UPDATE animals SET owners_id = 1 WHERE name LIKE '%Agumon%';
UPDATE animals SET owners_id = 2 WHERE name LIKE '%Gabumon%' OR name LIKE '%Pikachu%';
UPDATE animals SET owners_id = 3 WHERE name LIKE '%Devimon%' OR name LIKE '%Plantmon%';
UPDATE animals SET owners_id = 4 WHERE name LIKE '%Blossom%' OR name LIKE '%Squirtle%' OR name LIKE '%Charmander%';
UPDATE animals SET owners_id = 5 WHERE name LIKE '%Boarmon%' OR name LIKE '%Angemon%';
-- vets data --
INSERT INTO vets(name, age, date_of_graduation)
VALUES 	('William Tatcher', 45, '2000-04-23'), ('Maisy Smith', 26, '2019-01-17'),
	('Stephanie Mendez', 64, '1981-05-04'),	('Jack Harkness', 38, '2008-06-08');

INSERT INTO specialization (vet_id, species_id)
VALUES  (1 , 1), (3, 1), (3, 2), (4, 2);

INSERT INTO visits (date_of_visit, animals_id, vets_id)
VALUES ('2020-05-24', 1, 1), ('2020-07-22', 1, 3), ('2021-02-02', 2, 4), 
  ('2020-01-05', 3, 2), ('2020-03-08', 3, 2), ('2020-05-14', 3, 2),
	('2021-05-04', 4, 3), ('2021-02-24', 7, 4), ('2019-12-21', 7, 2), 
  ('2020-08-10', 7, 1), ('2021-04-07', 7, 2), ('2019-09-29', 7, 3),
	('2020-10-03', 8, 4), ('2020-11-04', 8, 4), ('2019-01-24', 9, 2), 
  ('2019-05-15', 9, 2), ('2020-02-27', 9, 2), ('2020-08-03', 9, 2),
	('2020-05-24', 10, 3),('2021-01-11', 10, 1);

