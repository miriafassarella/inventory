CREATE TABLE product (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nproduct VARCHAR (15) NOT NULL,
	model VARCHAR(100) NOT NULL,
	dpurchase DATE,
	nserie VARCHAR (30) NOT NULL,
	id_professional BIGINT NOT NULL,
	id_establishment BIGINT (20) NOT NULL,
	FOREIGN KEY (id_professional) REFERENCES professional(id),
    FOREIGN KEY (id_establishment) REFERENCES establishment(id)

);

INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099P-BONMIC-01','Dell Latitude 3520', CURRENT_DATE(), 'N87YU98', 1, 2);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099P-BONMIC-02', 'Dell Latitude 3440', CURRENT_DATE(), 'HY547JU', 2, 3);
INSERT INTO product (nproduct, model, dpurchase,  nserie, id_professional, id_establishment) values ('099i-PLAN-01', 'IPad 9e Géneration', CURRENT_DATE(), 'NGFH600UYTT400277', 3, 1);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099-ECLOUTIER','Casque Yealink', CURRENT_DATE(), '3ER456', 4, 3);