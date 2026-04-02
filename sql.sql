CREATE DATABASE IF NOT EXISTS chess;

USE chess;

CREATE TABLE IF NOT EXISTS users(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(15) UNIQUE NOT NULL,
    pass VARCHAR(50) NOT NULL,
    win_count INT NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS games(
	game_id INT PRIMARY KEY AUTO_INCREMENT,
    game_date DATETIME NOT NULL,
    user_id_1 INT NOT NULL,
    user_id_2 INT NOT NULL,
    winner_id INT NOT NULL,
    FOREIGN KEY (user_id_1) REFERENCES users(user_id),
	FOREIGN KEY (user_id_2) REFERENCES users(user_id),
    FOREIGN KEY (winner_id) REFERENCES users(user_id)
);

CREATE VIEW user_win_counts AS
SELECT u.user_id, u.username, COUNT(g.game_id) AS win_count
FROM users u
LEFT JOIN games g ON u.user_id = g.winner_id
GROUP BY u.user_id, u.username;