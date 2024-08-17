CREATE DATABASE sports;
CREATE TABLE tennis_game(player_id int ,player_name varchar(20),team_name varchar(20),jersey_no int,captain_name varchar(20));
CREATE TABLE cricket_game(player_id int,player_name varchar(20),team_name varchar(20),jersey_no int,captain_name varchar(20));
CREATE TABLE rugby_game(player_id int,player_name varchar (20),team_name varchar(20),jersey_no int,captain_name varchar(20));
CREATE TABLE football_game(player_id int,player_name varchar (20),team_name varchar(20),jersey_no int,captain_name varchar(20));
CREATE TABLE volleyball_game(player_id int,player_name varchar (20),team_name varchar(20),jersey_no int,captain_name varchar(20));

INSERT INTO tennis_game VALUES(1,'roger','usa','1','rahul');
INSERT INTO tennis_game VALUES(2,'mike','uk','2','rohit');
INSERT INTO tennis_game VALUES(3,'sania','india','3','mirza');
INSERT INTO tennis_game VALUES(4,'saniya','nepal','4','nehwal');
INSERT INTO tennis_game VALUES(5,'fedrer','china','5','monika');

SELECT * FROM tennis_game;
DESC tennis_game;

INSERT INTO cricket_game VALUES(1,'virat','india','12','rohit');
INSERT INTO cricket_game VALUES(2,'bumrah','india','13','rohit');
INSERT INTO cricket_game VALUES(3,'hardik','india','12','rohit');
INSERT INTO cricket_game VALUES(4,'siraj','india','12','rohit');
INSERT INTO cricket_game VALUES(5,'virat','india','12','rohit');

SELECT * FROM cricket_game;
DESC cricket_game;

INSERT INTO football_game VALUES(1,'virat','india','12','rohit');
INSERT INTO football_game VALUES(2,'bumrah','india','13','rohit');
INSERT INTO footaball_game VALUES(3,'hardik','india','12','rohit');
INSERT INTO football_game VALUES(4,'siraj','india','12','rohit');
INSERT INTO football_game VALUES(5,'virat','india','12','rohit');

SELECT * FROM football_game;
DESC football_game;



INSERT INTO rugby_game VALUES(1,'virat','india','12','rohit');
INSERT INTO rugby_game VALUES(2,'bumrah','india','13','rohit');
INSERT INTO rugby_game VALUES(3,'hardik','india','12','rohit');
INSERT INTO rugby_game VALUES(4,'siraj','india','12','rohit');
INSERT INTO rugby_game VALUES(5,'virat','india','12','rohit');


SELECT * FROM rugby_game;
DESC rugby_game;

INSERT INTO volleyball_game VALUES(1,'virat','india','12','rohit');
INSERT INTO volleyball_game VALUES(2,'bumrah','india','13','rohit');
INSERT INTO volleyball_game VALUES(3,'hardik','india','12','rohit');
INSERT INTO volleyball_game VALUES(4,'siraj','india','12','rohit');
INSERT INTO volleyball_game VALUES(5,'virat','india','12','rohit');

SELECT * FROM volleyball_game;
DESC volleyball_game;






