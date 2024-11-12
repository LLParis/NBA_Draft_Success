-- data/schema.sql

-- Table for player attributes
CREATE TABLE players (
    player_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(10),
    height_in_inches REAL,
    weight_in_lbs REAL,
    wingspan REAL,
    hand_length REAL,
    hand_width REAL,
    standing_reach REAL
);

-- Table for draft details
CREATE TABLE draft_details (
    draft_id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES players(player_id),
    draft_year INTEGER,
    draft_round INTEGER,
    draft_pick INTEGER,
    team VARCHAR(50)
);

-- Table for game statistics
CREATE TABLE game_stats (
    game_id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES players(player_id),
    season_year INTEGER,
    points REAL,
    rebounds REAL,
    assists REAL,
    steals REAL,
    blocks REAL,
    field_goal_percentage REAL,
    three_point_percentage REAL,
    free_throw_percentage REAL
);
