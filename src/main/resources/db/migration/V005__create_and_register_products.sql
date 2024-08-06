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
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099-MBERNIER-01','Casque Yealink', CURRENT_DATE(), '3ER456', 4, 3);

INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099P-BONMIC-03','Dell Latitude 3520', CURRENT_DATE(), 'N87YU96', 1, 2);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099P-BONMIC-04', 'Dell Latitude 3440', CURRENT_DATE(), 'HY545T1', 2, 3);
INSERT INTO product (nproduct, model, dpurchase,  nserie, id_professional, id_establishment) values ('099i-PLAN-02', 'IPad 10e Géneration', CURRENT_DATE(), 'NGFH600UYTT400266', 3, 1);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099-MROY-02','Casque Microsoft', CURRENT_DATE(), 'X807028-003', 4, 3);

INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099P-BONMIC-05','Laptop HP Victus Gaming', CURRENT_DATE(), 'N87J789', 1, 2);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099P-BONMIC-06', 'Dell Latitude 3440', CURRENT_DATE(), 'HY545TG', 2, 3);
INSERT INTO product (nproduct, model, dpurchase,  nserie, id_professional, id_establishment) values ('099i-PLAN-03', 'IPad 11e Géneration', CURRENT_DATE(), 'NGFH600UYTT400255', 3, 1);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099-CLAMBERT-03','Souris Dell', CURRENT_DATE(), '3ER488', 4, 3);

INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099P-BONMIC-07','Dell Latitude 3520', CURRENT_DATE(), 'N87YH5R', 1, 2);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099P-BONMIC-08', 'Dell Latitude 3440', CURRENT_DATE(), 'HY54QW3', 2, 3);
INSERT INTO product (nproduct, model, dpurchase,  nserie, id_professional, id_establishment) values ('099i-PLAN-04', 'IPad 9e Géneration', CURRENT_DATE(), 'NGFH600UYTT400099', 3, 1);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099-VBRAGA-04','Souris Lenovo', CURRENT_DATE(), '3ER321', 4, 3);

INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099P-BONMIC-09','Dell Latitude 3520', CURRENT_DATE(), 'N87YU98', 1, 2);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099P-BONMIC-10', 'Dell Latitude 3440', CURRENT_DATE(), 'HY547JU', 2, 3);
INSERT INTO product (nproduct, model, dpurchase,  nserie, id_professional, id_establishment) values ('099i-PLAN-05', 'IPad 12e Géneration', CURRENT_DATE(), 'NGFH600UYTT400277', 3, 1);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099-SSILVA-05','Casque Yealink', CURRENT_DATE(), '3ER333', 4, 3);
INSERT INTO product (nproduct, model, dpurchase, nserie, id_professional, id_establishment) values ('099-LROY','Souris Logitech', CURRENT_DATE(), '3ER222', 4, 3);