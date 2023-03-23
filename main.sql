CREATE TABLE players (
  player_id INT NOT NULL PRIMARY KEY,
  player_name VARCHAR(255),
  team_name VARCHAR(255),
  game_id INT,
  player_number INT,
  player_position VARCHAR(255),
  player_stats VARCHAR(255)
);

CREATE TABLE teams (
  team_id INT NOT NULL PRIMARY KEY,
  team_name VARCHAR(255),
  team_city VARCHAR(255),
  team_state VARCHAR(255),
  team_country VARCHAR(255),
  coach_name VARCHAR(255),
  team_stats VARCHAR(255)
);

CREATE TABLE games (
  game_id INT NOT NULL PRIMARY KEY,
  home_team_name VARCHAR(255),
  away_team_name VARCHAR(255),
  home_team_score INT,
  away_team_score INT,
  game_date DATE,
  game_time TIME,
  game_location VARCHAR(255),
  game_stats VARCHAR(255)
);

INSERT INTO teams (team_id, team_name, team_city, team_state, team_country, coach_name, team_stats)
VALUES
(1, 'Manchester United', 'Manchester', 'England', 'United Kingdom', 'Ole Gunnar Solskjær', '10 wins, 2 losses'),
(2, 'Lionel Messi', 'Barcelona', 'Spain', 'Spain', 'Carlo Ancelotti', '8 wins, 4 losses'),
(3, 'FC Barcelona', 'Barcelona', 'Catalonia', 'Spain', 'Ronald Koeman', '6 wins, 6 losses'),
(4, 'Bayern Munich', 'Munich', 'Bavaria', 'Germany', 'Julian Nagelsmann', '12 wins, 0 losses'),
(5, 'Paris Saint-Germain', 'Paris', 'Île-de-France', 'France', 'Mauricio Pochettino', '9 wins, 3 losses');


INSERT INTO games (game_id, home_team_name, away_team_name, home_team_score, away_team_score, game_date, game_time, game_location, game_stats)
VALUES
(1, 'Manchester United', 'Real Madrid', 2, 1, '2022-03-15', '20:00:00', 'Old Trafford', 'Group stage match'),
(2, 'FC Barcelona', 'Paris Saint-Germain', 1, 1, '2022-03-16', '21:00:00', 'Camp Nou', 'Group stage match'),
(3, 'Bayern Munich', 'Manchester United', 3, 0, '2022-03-22', '20:00:00', 'Allianz Arena', 'Group stage match'),
(4, 'Real Madrid', 'FC Barcelona', 8, 2, '2022-03-23', '20:00:00', 'Santiago Bernabeu', 'Grand Finale')

INSERT INTO players (player_id, player_name, player_number, player_position, player_stats)
VALUES
(1, 'Cristiano Ronaldo', 7, 5, ''),
(2, 'Lionel Messi', 10, 10, ''),
(3, 'Marcus Rashford', 7, 11, '');


select * from games;
select * from players;
select * from teams;