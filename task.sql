CREATE DATABASE info;

USE INFO;
CREATE TABLE state_info (state_id int,state_name VARCHAR(50),population INT,area float ,capital VARCHAR(50),language VARCHAR(50),currency VARCHAR(50),
    timezone VARCHAR(50),gdp FLOAT,governor VARCHAR(50));
    CREATE TABLE scam_info (scam_id INT PRIMARY KEY,scam_name VARCHAR(50),scam_type VARCHAR(50),amount FLOAT,victim_count INT,reported_date DATE,resolution_status VARCHAR(50),
    location VARCHAR(50),perpetrator VARCHAR(50),notes TEXT);
    ALTER TABLE state_info ADD region VARCHAR(50),ADD founding_year INT,ADD state_flag VARCHAR(100),ADD population_density FLOAT,
ADD major_industries TEXT;
ALTER TABLE scam_info ADD incident_date DATE,ADD last_updated TIMESTAMP,ADD severity_level VARCHAR(20),ADD affected_sectors TEXT,
ADD law_enforcement_involved BOOLEAN;
ALTER TABLE state_info
RENAME COLUMN state_name TO name,RENAME COLUMN population TO pop,RENAME COLUMN area TO state_area,RENAME COLUMN capital TO capital_city,
RENAME COLUMN governor TO state_governor;
ALTER TABLE scam_info RENAME COLUMN scam_name TO name,RENAME COLUMN scam_type TO type,RENAME COLUMN amount TO scam_amount,RENAME COLUMN victim_count TO num_victims,
RENAME COLUMN reported_date TO report_date;


ALTER TABLE state_info
MODIFY COLUMN pop BIGINT,MODIFY COLUMN state_area DECIMAL(10, 2),MODIFY COLUMN founding_year SMALLINT,MODIFY COLUMN population_density DECIMAL(5, 2),
MODIFY COLUMN major_industries VARCHAR(255);

ALTER TABLE scam_info MODIFY COLUMN scam_amount DECIMAL(12, 2),MODIFY COLUMN num_victims BIGINT,MODIFY COLUMN report_date DATETIME,MODIFY COLUMN severity_level CHAR(10),
MODIFY COLUMN law_enforcement_involved INT;

INSERT INTO state_info (state_id, name, pop, state_area, capital_city, language, currency, timezone, gdp, state_governor, region, founding_year, state_flag, population_density, major_industries)
INSERT INTO state_info values(1, 'Karnataka', 5000000, 25000.75, 'banglore', 'kannada', 'rupee', 'Timezone1', 100000.00, 'Governor1', 'Region1', 1800, 'Flag1', 200.0, 'Industry1')
INSERT INTO state_info values(2, 'Rajasthan', 8000000, 25000.75, 'jaipur', 'kannada', 'rupee', 'Timezone1', 100000.00, 'Governor1', 'Region1', 1800, 'Flag1', 200.0, 'Industry1')
INSERT INTO state_info values(3, 'goa', 5000000, 25000.75, 'banglore', 'kannada', 'rupee', 'Timezone1', 100000.00, 'Governor1', 'Region1', 1800, 'Flag1', 200.0, 'Industry1')
INSERT INTO state_info values(4, 'Madhya Pradesh', 5000000, 25000.75, 'banglore', 'kannada', 'rupee', 'Timezone1', 100000.00, 'Governor1', 'Region1', 1800, 'Flag1', 200.0, 'Industry1')
INSERT INTO state_info values(5, 'Uttar Pradesh', 5000000, 25000.75, 'banglore', 'kannada', 'rupee', 'Timezone1', 100000.00, 'Governor1', 'Region1', 1800, 'Flag1', 200.0, 'Industry1')
 
 
 INSERT INTO scam_info (scam_id, name, type, scam_amount, num_victims, report_date, resolution_status, location, perpetrator, notes, incident_date, last_updated, severity_level, affected_sectors, law_enforcement_involved)
VALUES
 INSERT INTO scam_info  values(1, 'Scam1', 'Type1', 10000.00, 10, '2024-01-01', 'Resolved', 'Location1', 'Perpetrator1', 'Notes1', '2024-01-01', '2024-01-02 12:00:00', 'High', 'Sector1', 1)
 INSERT INTO scam_info  values(2 'Scam2', 'Type2', 20000.00, 10, '2024-01-01', 'Resolved', 'Location1', 'Perpetrator1', 'Notes1', '2024-01-01', '2024-01-02 12:00:00', 'High', 'Sector1', 1)
 INSERT INTO scam_info values(3, 'Scam3', 'Type3', 30000.00, 10, '2024-01-01', 'Resolved', 'Location1', 'Perpetrator1', 'Notes1', '2024-01-01', '2024-01-02 12:00:00', 'High', 'Sector1', 1)
 INSERT INTO scam_info  values(4, 'Scam4', 'Type4', 40000.00, 10, '2024-01-01', 'Resolved', 'Location1', 'Perpetrator1', 'Notes1', '2024-01-01', '2024-01-02 12:00:00', 'High', 'Sector1', 1)
 INSERT INTO scam_info  values(5, 'Scam5', 'Type5', 50000.00, 10, '2024-01-01', 'Resolved', 'Location1', 'Perpetrator1', 'Notes1', '2024-01-01', '2024-01-02 12:00:00', 'High', 'Sector1', 1)

UPDATE state_info
SET pop = pop + 100000
WHERE state_id <= 10;

-- Update scam_info
UPDATE scam_info
SET scam_amount = scam_amount * 1.1
WHERE scam_id <= 10;

SELECT * FROM state_info
WHERE (pop > 1000000 AND state_area < 50000)
   OR (capital_city = 'Capital1')
   AND (region IN ('Region1', 'Region2'))
   AND (state_id NOT IN (1, 2, 3));

SELECT * FROM scam_info
WHERE (scam_amount > 5000 AND num_victims < 50)
   OR (resolution_status = 'Pending')
   AND (location IN ('Location1', 'Location2'))
   AND (scam_id NOT IN (1, 2, 3));









