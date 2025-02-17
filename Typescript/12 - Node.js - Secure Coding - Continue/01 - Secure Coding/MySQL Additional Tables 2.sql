﻿USE Northwind;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(128) NOT NULL
) DEFAULT CHARSET = utf8;

-- SHA512 Not Salted:
INSERT INTO users VALUES(DEFAULT, 'Moishe', 'Ufnik', 'moshiko', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db');
INSERT INTO users VALUES(DEFAULT, 'Kipi', 'Ben-Kipod', 'kipodi', 'd8022f2060ad6efd297ab73dcc5355c9b214054b0d1776a136a669d26a7d3b14f73aa0d0ebff19ee333368f0164b6419a96da49e3e481753e7e96b716bdccb6f');
INSERT INTO users VALUES(DEFAULT, 'Ugi', 'Fletzet', 'ugifletzet', '03a144604e0a3ce0c3d21e6e003e56957a200b8389cf1160d886732076c9041208a7176c4015f7b26cc560024580047725060c234afbfb7fcd13bff802a36c54');

DROP TABLE IF EXISTS forum;
CREATE TABLE forum (
	id INT AUTO_INCREMENT PRIMARY KEY,
	sender VARCHAR(100) NOT NULL,
	text VARCHAR(1000) NOT NULL
) DEFAULT CHARSET = utf8;

INSERT INTO forum VALUES(DEFAULT, 'Bart Simpson', 'Got to buy some of Northwind products...');
INSERT INTO forum VALUES(DEFAULT, 'Lisa Simpson', 'Where are Northwind employees today?');
INSERT INTO forum VALUES(DEFAULT, 'Lisa Simpson', 'Is it a real company?');