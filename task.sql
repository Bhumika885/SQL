CREATE DATABASE info;
USE info;

CREATE TABLE state_info (state_id INT,name VARCHAR(50),pop BIGINT,state_area DECIMAL(10, 2),capital_city VARCHAR(50),language VARCHAR(50),
currency VARCHAR(50),timezone VARCHAR(50),gdp FLOAT,state_governor VARCHAR(50),region VARCHAR(50),founding_year SMALLINT,state_flag VARCHAR(100),
population_density DECIMAL(5, 2),major_industries VARCHAR(255));

CREATE TABLE scam_info (scam_id INT PRIMARY KEY,name VARCHAR(50),type VARCHAR(50),scam_amount DECIMAL(12, 2),num_victims BIGINT,report_date DATETIME,
resolution_status VARCHAR(50),location VARCHAR(50),perpetrator VARCHAR(50),notes TEXT,incident_date DATE,last_updated TIMESTAMP,severity_level CHAR(10),
affected_sectors TEXT,law_enforcement_involved INT);

INSERT INTO scam_info (scam_id, name, type, scam_amount, num_victims, report_date, resolution_status, location, perpetrator, notes, incident_date, last_updated, severity_level, affected_sectors, law_enforcement_involved)
VALUES
(1, 'Scam1', 'Type1', 10000.00, 10, '2024-01-01', 'Resolved', 'Location1', 'Perpetrator1', 'Notes1', '2024-01-01', '2024-01-02 12:00:00', 'High', 'Sector1', 1),
(2, 'Scam2', 'Type2', 20000.00, 10, '2024-01-01', 'Resolved', 'Location1', 'Perpetrator1', 'Notes1', '2024-01-01', '2024-01-02 12:00:00', 'High', 'Sector1', 1),
(3, 'Scam3', 'Type3', 30000.00, 10, '2024-01-01', 'Resolved', 'Location1', 'Perpetrator1', 'Notes1', '2024-01-01', '2024-01-02 12:00:00', 'High', 'Sector1', 1),
(4, 'Scam4', 'Type4', 40000.00, 10, '2024-01-01', 'Resolved', 'Location1', 'Perpetrator1', 'Notes1', '2024-01-01', '2024-01-02 12:00:00', 'High', 'Sector1', 1),
(5, 'Scam5', 'Type5', 50000.00, 10, '2024-01-01', 'Resolved', 'Location1', 'Perpetrator1', 'Notes1', '2024-01-01', '2024-01-02 12:00:00', 'High', 'Sector1', 1);

UPDATE state_info
SET pop = pop + 100000
WHERE state_id <= 10;

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
