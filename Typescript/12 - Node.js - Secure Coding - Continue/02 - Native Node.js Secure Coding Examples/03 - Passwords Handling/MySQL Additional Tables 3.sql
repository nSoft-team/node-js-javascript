﻿USE Northwind;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(128) NOT NULL
) DEFAULT CHARSET = utf8;

-- SHA512 Salted:
INSERT INTO users VALUES(DEFAULT, 'Moishe', 'Ufnik', 'moshiko', 'dd6ff49baeb6802c954201a4216f690810451a9991247ebe7fd62556bc68218071c7e27de059fecde889215a9a5c17f30d8c87f03c339818fbaa61ca18cd756b');
INSERT INTO users VALUES(DEFAULT, 'Kipi', 'Ben-Kipod', 'kipodi', '1611ee302fa9a366b6cddafd095bfd705b487e839e9278e76bbae34d49274fa2a9d15645b05f42814003dfed7d0dc715a1e5799007ffaca55e86cc39f6ce94b4');
INSERT INTO users VALUES(DEFAULT, 'Ugi', 'Fletzet', 'ugifletzet', '647f13d755f48b64e5a73243adc62868bead6d9bc1971f47f9bd6424d7cc2b1811d5b2052ac50dd6ab21bbde373b9bd93a09e9e667356e116c07ce8b08f5a3ed');

DROP TABLE IF EXISTS forum;
CREATE TABLE forum (
	id INT AUTO_INCREMENT PRIMARY KEY,
	sender VARCHAR(100) NOT NULL,
	text VARCHAR(1000) NOT NULL
) DEFAULT CHARSET = utf8;

INSERT INTO forum VALUES(DEFAULT, 'Bart Simpson', 'Got to buy some of Northwind products...');
INSERT INTO forum VALUES(DEFAULT, 'Lisa Simpson', 'Where are Northwind employees today?');
INSERT INTO forum VALUES(DEFAULT, 'Lisa Simpson', 'Is it a real company?');