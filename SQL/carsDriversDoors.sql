CREATE DATABASE cars;

CREATE TABLE car (
    carID VARCHAR(255) PRIMARY KEY,
    make VARCHAR(255),
    model VARCHAR(255),
    colour VARCHAR(50),
    horsepower INT
);

CREATE TABLE Driver (
    driverID INT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    occupation VARCHAR(100)
);

CREATE TABLE driverLine (
    driverLineID INT AUTO_INCREMENT PRIMARY KEY,
    driverID INT,
    carID VARCHAR(255),
    FOREIGN KEY (driverID) REFERENCES Driver(driverID),
    FOREIGN KEY (carID) REFERENCES car(carID)
);

CREATE TABLE door (
    doorID INT AUTO_INCREMENT PRIMARY KEY,
    carID VARCHAR(255),
    colour VARCHAR(50),
    rgbLighting BOOLEAN,
    FOREIGN KEY (carID) REFERENCES car(carID)
);

insert into car (carID, make, model, colour, horsepower) values ('WAUCFAFR5BA407135', 'Mitsubishi', 'Galant', 'Blue', 1);
insert into car (carID, make, model, colour, horsepower) values ('JN1AZ4EH8AM154419', 'Jeep', 'Compass', 'Khaki', 2);
insert into car (carID, make, model, colour, horsepower) values ('1N6AD0CW5EN249779', 'Ford', 'Expedition', 'Indigo', 3);
insert into car (carID, make, model, colour, horsepower) values ('3VW1K7AJ5FM158920', 'Chrysler', 'Sebring', 'Green', 4);
insert into car (carID, make, model, colour, horsepower) values ('WBAPK5G57BN175758', 'Mitsubishi', 'Eclipse', 'Turquoise', 5);
insert into car (carID, make, model, colour, horsepower) values ('1D4PT4GK1BW117559', 'GMC', 'Savana 2500', 'Yellow', 6);
insert into car (carID, make, model, colour, horsepower) values ('2FMGK5BC3CB767267', 'Honda', 'CR-V', 'Goldenrod', 7);
insert into car (carID, make, model, colour, horsepower) values ('JH4CL95824C313402', 'Chrysler', 'Concorde', 'Turquoise', 8);
insert into car (carID, make, model, colour, horsepower) values ('SCBBP9ZA2DC779946', 'Chevrolet', 'Camaro', 'Crimson', 9);
insert into car (carID, make, model, colour, horsepower) values ('YV1960AS2A1883904', 'BMW', 'X5', 'Khaki', 10);
insert into car (carID, make, model, colour, horsepower) values ('WAUBFAFL0EN062455', 'Buick', 'Regal', 'Violet', 11);
insert into car (carID, make, model, colour, horsepower) values ('1C3CDFEB2FD269850', 'Chevrolet', 'Lumina', 'Goldenrod', 12);
insert into car (carID, make, model, colour, horsepower) values ('WAUSH94F57N111934', 'Mercedes-Benz', 'GL-Class', 'Violet', 13);
insert into car (carID, make, model, colour, horsepower) values ('1GD311CG5FZ309729', 'Cadillac', 'DeVille', 'Fuscia', 14);
insert into car (carID, make, model, colour, horsepower) values ('JN1CV6EK6BM232256', 'Ford', 'Bronco', 'Red', 15);
insert into car (carID, make, model, colour, horsepower) values ('SCBGT3ZA9FC590888', 'BMW', 'X5', 'Indigo', 16);
insert into car (carID, make, model, colour, horsepower) values ('WBASN2C5XBC199828', 'Audi', 'A8', 'Violet', 17);
insert into car (carID, make, model, colour, horsepower) values ('WAUDF98E15A968076', 'Oldsmobile', 'Silhouette', 'Purple', 18);
insert into car (carID, make, model, colour, horsepower) values ('1G4HJ5EM4AU594123', 'Dodge', 'Ram Wagon B350', 'Blue', 19);
insert into car (carID, make, model, colour, horsepower) values ('WAUR2AFD4DN072861', 'Dodge', 'Dakota Club', 'Red', 20);
insert into car (carID, make, model, colour, horsepower) values ('3D4PG7FG3BT316301', 'Oldsmobile', 'Cutlass', 'Khaki', 21);
insert into car (carID, make, model, colour, horsepower) values ('1HGCP2F33BA304038', 'Dodge', 'Ram 1500', 'Teal', 22);
insert into car (carID, make, model, colour, horsepower) values ('WA1LGBFE2CD701668', 'Mercedes-Benz', 'E-Class', 'Khaki', 23);
insert into car (carID, make, model, colour, horsepower) values ('1FTEX1CM6BF215515', 'Kia', 'Optima', 'Pink', 24);
insert into car (carID, make, model, colour, horsepower) values ('WBANN73517C968508', 'GMC', 'Savana 2500', 'Goldenrod', 25);
insert into car (carID, make, model, colour, horsepower) values ('SCFFDCCD2CG000402', 'Ford', 'Focus', 'Maroon', 26);
insert into car (carID, make, model, colour, horsepower) values ('WA1CKAFP9AA337533', 'GMC', 'Savana 1500', 'Blue', 27);
insert into car (carID, make, model, colour, horsepower) values ('WDCYC3HF1EX669651', 'Suzuki', 'Swift', 'Pink', 28);
insert into car (carID, make, model, colour, horsepower) values ('WVGFF9BP2BD704683', 'Hyundai', 'Tucson', 'Turquoise', 29);
insert into car (carID, make, model, colour, horsepower) values ('1G4PP5SK0C4086487', 'Chevrolet', 'Sportvan G30', 'Yellow', 30);

insert into door (doorID, carID, colour, rgbLighting) values (1, '1HGCP2F33BA304038', 'Teal', false);
insert into door (doorID, carID, colour, rgbLighting) values (2, '1G4PP5SK0C4086487', 'Yellow', true);
insert into door (doorID, carID, colour, rgbLighting) values (3, 'WAUDF98E15A968076', 'Purple', false);
insert into door (doorID, carID, colour, rgbLighting) values (4, 'SCFFDCCD2CG000402', 'Maroon', true);
insert into door (doorID, carID, colour, rgbLighting) values (5, '3D4PG7FG3BT316301', 'Khaki', false);
insert into door (doorID, carID, colour, rgbLighting) values (6, 'WA1CKAFP9AA337533', 'Blue', false);
insert into door (doorID, carID, colour, rgbLighting) values (7, 'WA1LGBFE2CD701668', 'Khaki', false);
insert into door (doorID, carID, colour, rgbLighting) values (8, 'WVGFF9BP2BD704683', 'Turquoise', true);
insert into door (doorID, carID, colour, rgbLighting) values (9, '1GD311CG5FZ309729', 'Fuscia', false);
insert into door (doorID, carID, colour, rgbLighting) values (10, 'SCBGT3ZA9FC590888', 'Indigo', true);

insert into driver (driverID, name, age, occupation) values (1, 'Worth Bes', '26', 'Web Developer IV');
insert into driver (driverID, name, age, occupation) values (2, 'Thedric Harflete', '49', NULL);
insert into driver (driverID, name, age, occupation) values (3, 'Chad Featonby', '56', 'Quality Engineer');
insert into driver (driverID, name, age, occupation) values (4, 'Orella Pandie', '26', 'Structural Analysis Engineer');
insert into driver (driverID, name, age, occupation) values (5, 'Sapphire Leguey', '22', 'Help Desk Technician');
insert into driver (driverID, name, age, occupation) values (6, 'Robert Thursfield', '69', 'Administrative Officer');
insert into driver (driverID, name, age, occupation) values (7, 'Clywd Pahl', '21', 'Actuary');
insert into driver (driverID, name, age, occupation) values (8, 'Melina Quilliam', '36', 'Executive Secretary');
insert into driver (driverID, name, age, occupation) values (9, 'Stephana De la Barre', '23', 'Engineer III');
insert into driver (driverID, name, age, occupation) values (10, 'Vanda Beecker', '45', 'VP Marketing');
insert into driver (driverID, name, age, occupation) values (11, 'Starlin Knellen', '61', 'Database Administrator IV');
insert into driver (driverID, name, age, occupation) values (12, 'Nesta Passe', '28', 'Operator');
insert into driver (driverID, name, age, occupation) values (13, 'Milka Goodbairn', '52', 'Accounting Assistant I');
insert into driver (driverID, name, age, occupation) values (14, 'Devi Burgoyne', '61', 'VP Accounting');
insert into driver (driverID, name, age, occupation) values (15, 'Ignacius Edlestone', '31', 'VP Sales');
insert into driver (driverID, name, age, occupation) values (16, 'Averyl Raittie', '37', 'Account Executive');
insert into driver (driverID, name, age, occupation) values (17, 'Aggi Trunby', '23', 'Associate Professor');
insert into driver (driverID, name, age, occupation) values (18, 'Jerad Kittle', '29', 'Executive Secretary');
insert into driver (driverID, name, age, occupation) values (19, 'Rosina Litchmore', '19', 'Registered Nurse');
insert into driver (driverID, name, age, occupation) values (20, 'Meridel Aitken', '44', 'Teacher');
insert into driver (driverID, name, age, occupation) values (21, 'Natty Sprason', '57', 'Programmer Analyst IV');
insert into driver (driverID, name, age, occupation) values (22, 'Venita Carswell', '59', 'Civil Engineer');
insert into driver (driverID, name, age, occupation) values (23, 'Jan Hamlin', '76', 'Marketing Manager');
insert into driver (driverID, name, age, occupation) values (24, 'Ronny Rubinsztein', '86', 'Analyst Programmer');
insert into driver (driverID, name, age, occupation) values (25, 'Val Dodsworth', '41', 'Analyst Programmer');
insert into driver (driverID, name, age, occupation) values (26, 'Sawyer Haglinton', '24', 'Programmer II');
insert into driver (driverID, name, age, occupation) values (27, 'Ashien Otridge', '25', 'VP Sales');
insert into driver (driverID, name, age, occupation) values (28, 'Yuma Borland', '36', 'Structural Engineer');
insert into driver (driverID, name, age, occupation) values (29, 'Benito Kiddell', '97', 'Registered Nurse');
insert into driver (driverID, name, age, occupation) values (30, 'Ryann Bugge', '39', 'Civil Engineer');

insert into driverLine (driverLineID, driverID, carID) values (1, 9, 'SCBGT3ZA9FC590888');
insert into driverLine (driverLineID, driverID, carID) values (2, 28, '1G4HJ5EM4AU594123');
insert into driverLine (driverLineID, driverID, carID) values (3, 5, '1D4PT4GK1BW117559');
insert into driverLine (driverLineID, driverID, carID) values (4, 1, '1C3CDFEB2FD269850');
insert into driverLine (driverLineID, driverID, carID) values (5, 16, 'WA1LGBFE2CD701668');
insert into driverLine (driverLineID, driverID, carID) values (6, 29, 'SCBBP9ZA2DC779946');
insert into driverLine (driverLineID, driverID, carID) values (7, 23, '3D4PG7FG3BT316301');
insert into driverLine (driverLineID, driverID, carID) values (8, 4, 'JH4CL95824C313402');
insert into driverLine (driverLineID, driverID, carID) values (9, 10, 'WBASN2C5XBC199828');
insert into driverLine (driverLineID, driverID, carID) values (10, 22, 'SCBGT3ZA9FC590888');
insert into driverLine (driverLineID, driverID, carID) values (11, 2, '1FTEX1CM6BF215515');
insert into driverLine (driverLineID, driverID, carID) values (12, 3, 'WAUSH94F57N111934');
insert into driverLine (driverLineID, driverID, carID) values (13, 8, '3D4PG7FG3BT316301');
insert into driverLine (driverLineID, driverID, carID) values (14, 30, 'WAUDF98E15A968076');
insert into driverLine (driverLineID, driverID, carID) values (15, 20, '1G4PP5SK0C4086487');
insert into driverLine (driverLineID, driverID, carID) values (16, 10, 'WDCYC3HF1EX669651');
insert into driverLine (driverLineID, driverID, carID) values (17, 15, '1N6AD0CW5EN249779');
insert into driverLine (driverLineID, driverID, carID) values (18, 11, '2FMGK5BC3CB767267');
insert into driverLine (driverLineID, driverID, carID) values (19, 25, 'WAUR2AFD4DN072861');
insert into driverLine (driverLineID, driverID, carID) values (20, 2, '1FTEX1CM6BF215515');
insert into driverLine (driverLineID, driverID, carID) values (21, 18, 'JN1CV6EK6BM232256');
insert into driverLine (driverLineID, driverID, carID) values (22, 7, '1GD311CG5FZ309729');
insert into driverLine (driverLineID, driverID, carID) values (23, 9, 'WAUDF98E15A968076');
insert into driverLine (driverLineID, driverID, carID) values (24, 21, '1G4HJ5EM4AU594123');
insert into driverLine (driverLineID, driverID, carID) values (25, 26, 'WBASN2C5XBC199828');
insert into driverLine (driverLineID, driverID, carID) values (26, 4, 'SCFFDCCD2CG000402');
insert into driverLine (driverLineID, driverID, carID) values (27, 17, 'JH4CL95824C313402');
insert into driverLine (driverLineID, driverID, carID) values (28, 27, 'WAUDF98E15A968076');
insert into driverLine (driverLineID, driverID, carID) values (29, 24, '1C3CDFEB2FD269850');
insert into driverLine (driverLineID, driverID, carID) values (30, 9, 'WA1LGBFE2CD701668');

SELECT door.doorID, car.make, car.model 
FROM door INNER JOIN car ON door.carID = car.carID
ORDER BY doorID

SELECT driver.name, car.make, car.model
FROM driver, car, driverline
WHERE driver.driverID = driverline.driverID and car.carID = driverline.carID
