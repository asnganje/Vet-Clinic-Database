/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(200),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

/* Populate database with sample data. */
ALTER TABLE animals ADD COLUMN species VARCHAR(200);

CREATE TABLE owners (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(300),
    age INT    
);

CREATE TABLE species (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(300)   
);

ALTER TABLE animals DROP COLUMN species;

-- Add column species_id which is a foreign key referencing species table
ALTER TABLE animals  ADD COLUMN species_id INT;
ALTER TABLE animals ADD FOREIGN KEY (species_id)  REFERENCES species(id); 

-- Add column owner_id which is a foreign key referencing the owners table
ALTER TABLE animals  ADD COLUMN owner_id INT;
ALTER TABLE animals ADD FOREIGN KEY (owner_id)  REFERENCES owners(id); 


CREATE TABLE vets (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    date_of_graduation DATE
);

CREATE TABLE specialization (
    id INT GENERATED ALWAYS AS IDENTITY,
    vet_id INT,
    species_id INT,
    FOREIGN KEY (vet_id) REFERENCES vets(id),
    FOREIGN KEY (species_id) REFERENCES  species(id),
    PRIMARY KEY (id)
);

CREATE TABLE visits (
    id INT GENERATED ALWAYS AS IDENTITY,
    animals_id INT,
    vets_id INT,   	
    date_of_visit VARCHAR(50),
    FOREIGN KEY (animals_id) REFERENCES  animals(id),
    FOREIGN KEY (vets_id) REFERENCES vets(id),
    PRIMARY KEY (id)
);