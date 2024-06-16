CREATE TABLE establishment (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR (100) NOT NULL,
	enumber VARCHAR(5) NOT NULL
);

INSERT INTO establishment(name, enumber) VALUES ('École Notre-Dame du Sacre Coeur', '068');
INSERT INTO establishment(name, enumber) VALUES ('École Notre-Dame du Paradis', '067');
INSERT INTO establishment(name, enumber) VALUES ('École Notre-Dame de Lorette', '063');
INSERT INTO establishment(name, enumber) VALUES ('École Saint-Paul', '055');
INSERT INTO establishment(name, enumber) VALUES ('École Des Trois Cantons', '058');