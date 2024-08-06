CREATE TABLE establishment (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR (100) NOT NULL,
	enumber VARCHAR(5) NOT NULL,
	id_board BIGINT (20) NOT NULL,
    FOREIGN KEY (id_board) REFERENCES board(id)
);

INSERT INTO establishment(name, enumber, id_board) VALUES ('École Dominique-Savio', '016', 1);
INSERT INTO establishment(name, enumber, id_board) VALUES ('École des Ursulines de Québec', '015', 2);
INSERT INTO establishment(name, enumber, id_board) VALUES ('École de La Chaumière', '014', 3);
INSERT INTO establishment(name, enumber, id_board) VALUES ('École de la Mosaïque', '017', 1);
INSERT INTO establishment(name, enumber, id_board) VALUES ('École des Grands-Saules', '018', 2);

