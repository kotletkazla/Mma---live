-- Fighters Table
CREATE TABLE fighters (
    fighter_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    weight_class VARCHAR(50) NOT NULL,
    reach INT,
    wins INT DEFAULT 0,
    losses INT DEFAULT 0,
    draws INT DEFAULT 0
);

-- Events Table
CREATE TABLE events (
    event_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date TIMESTAMP NOT NULL,
    location VARCHAR(100),
    broadcaster_id INT,
    FOREIGN KEY (broadcaster_id) REFERENCES broadcasters(broadcaster_id)
);

-- Fights Table
CREATE TABLE fights (
    fight_id SERIAL PRIMARY KEY,
    event_id INT,
    fighter1_id INT NOT NULL,
    fighter2_id INT NOT NULL,
    winner_id INT,
    round INT,
    time TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(event_id),
    FOREIGN KEY (fighter1_id) REFERENCES fighters(fighter_id),
    FOREIGN KEY (fighter2_id) REFERENCES fighters(fighter_id),
    FOREIGN KEY (winner_id) REFERENCES fighters(fighter_id)
);

-- Broadcasters Table
CREATE TABLE broadcasters (
    broadcaster_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

-- User Preferences Table
CREATE TABLE user_preferences (
    user_id SERIAL PRIMARY KEY,
    timezone VARCHAR(50),
    notification_setting BOOLEAN DEFAULT TRUE,
    favorite_fighter INT,
    FOREIGN KEY (favorite_fighter) REFERENCES fighters(fighter_id)
);