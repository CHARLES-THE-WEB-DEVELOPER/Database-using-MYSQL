
-- Create the database
CREATE DATABASE ghana_government;
USE ghana_government;

-- Create tables
CREATE TABLE government_arms (
    arm_id INT PRIMARY KEY AUTO_INCREMENT,
    arm_name VARCHAR(100) NOT NULL UNIQUE,
    primary_functions TEXT NOT NULL
);

CREATE TABLE executive_branch (
    executive_id INT PRIMARY KEY,
    arm_id INT,
    president_name VARCHAR(100),
    president_title VARCHAR(50) DEFAULT 'President of Ghana',
    appointment_date DATE,
    appointment_process TEXT,
    FOREIGN KEY (arm_id) REFERENCES government_arms(arm_id)
);

CREATE TABLE legislative_branch (
    legislative_id INT PRIMARY KEY,
    arm_id INT,
    parliament_name VARCHAR(100) DEFAULT 'Parliament of Ghana',
    total_members INT,
    speaker_name VARCHAR(100),
    key_functions TEXT,
    appointment_date DATE,
    FOREIGN KEY (arm_id) REFERENCES government_arms(arm_id)
);

CREATE TABLE judiciary_branch (
    judiciary_id INT PRIMARY KEY,
    arm_id INT,
    chief_justice_name VARCHAR(100),
    appointment_process TEXT,
    key_functions TEXT,
    FOREIGN KEY (arm_id) REFERENCES government_arms(arm_id)
);

-- Insert data
INSERT INTO government_arms VALUES
(1, 'Executive', 'Day-to-day administration and implementation of policies and laws'),
(2, 'Legislature', 'Making laws and monitoring the executive'),
(3, 'Judiciary', 'Interpreting and applying the laws of Ghana');

INSERT INTO executive_branch VALUES
(1, 1, 'John Dramani Mahama', DEFAULT, '2025-01-07', 'Elected through national elections');

INSERT INTO legislative_branch VALUES
(1, 2, DEFAULT, 275, 'Alban Sumana Kingsford Bagbin', 'Lawmaking, controlling public finances, monitoring executive', '2021-01-07');

INSERT INTO judiciary_branch VALUES
(1, 3, 'Gertrude Araba Esaaba Sackey Torkornoo', 'Appointed by President in consultation with Judicial Council and Council of State, approved by Parliament', 'Ensures justice, interprets laws, protects constitutional rights');

SELECT * FROM government_arms;
SELECT * FROM executive_branch;
SELECT * FROM legislative_branch;
SELECT * FROM judiciary_branch;

