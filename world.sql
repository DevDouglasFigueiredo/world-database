-- Create the schema
CREATE DATABASE IF NOT EXISTS world;

USE world;

DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS countrylanguage;
DROP TABLE IF EXISTS country;

-- Create the 'country' table
CREATE TABLE IF NOT EXISTS country (
    Code CHAR(3) NOT NULL,
    Name VARCHAR(52) NOT NULL,
    Continent ENUM('Asia', 'Europe', 'North America', 'Africa', 'Oceania', 'Antarctica', 'South America') NOT NULL,
    Region VARCHAR(26) NOT NULL,
    SurfaceArea FLOAT NOT NULL,
    IndepYear SMALLINT,
    Population INT NOT NULL,
    LifeExpectancy FLOAT,
    GNP FLOAT,
    GNPOld FLOAT,
    LocalName VARCHAR(45) NOT NULL,
    GovernmentForm VARCHAR(45) NOT NULL,
    HeadOfState VARCHAR(45),
    Capital INT,
    Code2 CHAR(2) NOT NULL,
    PRIMARY KEY (Code)
);

-- Insert data into 'country' table
INSERT INTO country (Code, Name, Continent, Region, SurfaceArea, IndepYear, Population, LifeExpectancy, GNP, GNPOld, LocalName, GovernmentForm, HeadOfState, Capital, Code2) VALUES
('AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', 652230.0, 1919, 22720000, 45.9, 5976.0, NULL, 'Afganistan/Afqanestan', 'Islamic Emirate', 'Mohammad Omar', NULL, 'AF'),
('NLD', 'Netherlands', 'Europe', 'Western Europe', 41526.0, 1581, 15864000, 78.3, 371362.0, 360478.0, 'Nederland', 'Constitutional Monarchy', 'Beatrix', NULL, 'NL');

-- Create the 'city' table
CREATE TABLE IF NOT EXISTS city (
    ID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(35) NOT NULL,
    CountryCode CHAR(3) NOT NULL,
    District VARCHAR(20) NOT NULL,
    Population INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (CountryCode) REFERENCES country(Code)
);

-- Insert data into 'city' table
INSERT INTO city (Name, CountryCode, District, Population) VALUES
('Kabul', 'AFG', 'Kabol', 1780000),
('Qandahar', 'AFG', 'Qandahar', 237500),
('Herat', 'AFG', 'Herat', 186800),
('Mazar-e-Sharif', 'AFG', 'Balkh', 127800),
('Amsterdam', 'NLD', 'Noord-Holland', 731200),
('Rotterdam', 'NLD', 'Zuid-Holland', 593321),
('Haaq', 'NLD', 'Zuid-Holland', 440900),
('Utrecht', 'NLD', 'Utrecht', 234323),
('Eindhoven', 'NLD', 'Noord-Brabant', 201843),
('Tilburg', 'NLD', 'Noord-Brabant', 193238),
('Groningen', 'NLD', 'Groningen', 172701),
('Breda', 'NLD', 'Noord-Brabant', 162980);

-- Create the 'countrylanguage' table
CREATE TABLE IF NOT EXISTS countrylanguage (
    CountryCode CHAR(3) NOT NULL,
    Language VARCHAR(30) NOT NULL,
    IsOfficial ENUM('T', 'F') NOT NULL,
    Percentage FLOAT NOT NULL,
    PRIMARY KEY (CountryCode, Language),
    FOREIGN KEY (CountryCode) REFERENCES country(Code)
);

-- Optionally, you can insert sample data into 'countrylanguage' table
-- This is just an example. You can insert actual data as needed.
INSERT INTO countrylanguage (CountryCode, Language, IsOfficial, Percentage) VALUES
('AFG', 'Pashto', 'T', 35.0),
('AFG', 'Uzbek', 'F', 11.0),
('AFG', 'Turkmen', 'F', 11.0),
('NLD', 'Dutch', 'T', 90.0),
('NLD', 'Frisian', 'F', 10.0);

