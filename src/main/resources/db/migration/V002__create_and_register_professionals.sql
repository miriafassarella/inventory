CREATE TABLE professional (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR (100) NOT NULL,
	registration VARCHAR(10) NOT NULL,
	id_establishment BIGINT (20) NOT NULL,
    FOREIGN KEY (id_establishment) REFERENCES establishment(id)
);

INSERT INTO professional(name, registration, id_establishment) VALUES ('Miriã Fassarella', '987567', 1);
INSERT INTO professional(name, registration, id_establishment) VALUES ('Maryna Lovnov', '237679', 2);
INSERT INTO professional(name, registration, id_establishment) VALUES ('Alexandra Fortin', '376589', 3);
INSERT INTO professional(name, registration, id_establishment) VALUES ('Manon Alarie', '876799', 1);