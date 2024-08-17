CREATE TABLE movie_info (movie_id INT PRIMARY KEY,title VARCHAR(100),director VARCHAR(100),release_year INT,genre VARCHAR(50),rating BIGINT,budget BIGINT,
box_office BIGINT,is_active BOOLEAN,language VARCHAR(50));
CREATE TABLE bank_details (account_id INT PRIMARY KEY,account_holder VARCHAR(100),bank_name VARCHAR(100),branch VARCHAR(100),account_type VARCHAR(50),
balance BIGINT,overdraft_limit BIGINT,interest_rate BIGINT,is_active BOOLEAN,opening_date DATE);


ALTER TABLE movie_info
ADD duration INT,
ADD production_company VARCHAR(100),
ADD country VARCHAR(50),
ADD awards VARCHAR(255),
ADD language_code VARCHAR(10);

ALTER TABLE movie_info
ADD duration INT,
ADD production_company VARCHAR(100),
ADD country VARCHAR(50),
ADD awards VARCHAR(255),
ADD language_code VARCHAR(10);

ALTER TABLE movie_info
RENAME COLUMN title TO movie_title,
RENAME COLUMN director TO movie_director,
RENAME COLUMN release_year TO year_released,
RENAME COLUMN genre TO movie_genre,
RENAME COLUMN is_active TO active_status;


ALTER TABLE movie_info
RENAME COLUMN title TO movie_title,
RENAME COLUMN director TO movie_director,
RENAME COLUMN release_year TO year_released,
RENAME COLUMN genre TO movie_genre,
RENAME COLUMN is_active TO active_status;

ALTER TABLE movie_info
MODIFY COLUMN rating DECIMAL(10, 2),
MODIFY COLUMN budget DECIMAL(15, 2),
MODIFY COLUMN box_office DECIMAL(15, 2),
MODIFY COLUMN release_year SMALLINT,
MODIFY COLUMN duration SMALLINT;



ALTER TABLE bank_details
MODIFY COLUMN balance DECIMAL(15, 2),
MODIFY COLUMN overdraft_limit DECIMAL(15, 2),
MODIFY COLUMN interest_rate DECIMAL(5, 2),
MODIFY COLUMN opening_date DATETIME,
MODIFY COLUMN phone_number CHAR(15);

INSERT INTO movie_info (movie_id, movie_title, movie_director, year_released, movie_genre, rating, budget, box_office, active_status, language)
VALUES
(1, 'Inception', 'Christopher Nolan', 2010, 'Sci-Fi', 850000000, 160000000, 830000000, TRUE, 'English')
(2, 'The Matrix', 'Wachowskis', 1999, 'Action', 465000000, 63000000, 463000000, TRUE, 'English')






