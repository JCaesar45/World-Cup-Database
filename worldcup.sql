camper@codespaces-6d0b5a:/workspace/project$ psql --username=freecodecamp --dbname=postgres
psql (12.22 (Ubuntu 12.22-0ubuntu0.20.04.4))
Type "help" for help.

postgres=> -- Create a database named "world_cup"
postgres=> CREATE DATABASE world_cup;
CREATE DATABASE
postgres=> 
postgres=> -- Connect to the "world_cup" database
postgres=> \c world_cup
You are now connected to database "world_cup" as user "freecodecamp".
world_cup=> 
world_cup=> -- Create a table to store information about the games
world_cup=> CREATE TABLE games (
world_cup(>   id SERIAL PRIMARY KEY,
world_cup(>   year INTEGER NOT NULL,
world_cup(>   round VARCHAR(50) NOT NULL,
world_cup(>   winner VARCHAR(100) NOT NULL,
world_cup(>   opponent VARCHAR(100) NOT NULL,
world_cup(>   winner_goals INTEGER NOT NULL,
world_cup(>   opponent_goals INTEGER NOT NULL
world_cup(> );
CREATE TABLE
world_cup=> 
world_cup=> -- Create a table to store information about the teams
world_cup=> CREATE TABLE teams (
world_cup(>   id SERIAL PRIMARY KEY,
world_cup(>   name VARCHAR(100) NOT NULL
world_cup(> );-- Create a many-to-many relationship between the games and teams tables
CREATE TABLE
world_cup=> CREATE TABLE game_teams (
world_cup(>   game_id INTEGER NOT NULL REFERENCES games(id),
world_cup(>   team_id INTEGER NOT NULL REFERENCES teams(id),
world_cup(>   PRIMARY KEY (game_id, team_id)
world_cup(> );
CREATE TABLE
world_cup=> 
