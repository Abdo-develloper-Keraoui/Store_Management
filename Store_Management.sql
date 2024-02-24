DROP DATABASE IF EXISTS `Store_Management`;
CREATE DATABASE `Store_Management`;
USE `Store_Management`;






CREATE TABLE client_SM ( 
  id_client INT NOT NULL AUTO_INCREMENT,
  nom_client VARCHAR(50),
  prenom_client VARCHAR(50),
  adr_client VARCHAR(150),
  PRIMARY KEY (id_client)
);

CREATE TABLE commande_sm (
  ref_commande INT NOT NULL,
  date_commande DATE,
  adr_livraison VARCHAR(150),
  date_livraison DATE,
  id_client INT NOT NULL,
  PRIMARY KEY (ref_commande),
  FOREIGN KEY (id_client) REFERENCES client_SM (id_client)
);

CREATE TABLE produit_SM (
  ref_produit INT NOT NULL,
  libelle VARCHAR(50),
  prix_unite INT,
  PRIMARY KEY (ref_produit)
);

CREATE TABLE relation_ComProd (
  ref_commande INT NOT NULL,
  ref_produit INT NOT NULL,
  qte_produit INT,
  PRIMARY KEY (ref_commande, ref_produit),
  FOREIGN KEY (ref_commande) REFERENCES commande_sm (ref_commande),
  FOREIGN KEY (ref_produit) REFERENCES produit_SM (ref_produit)
);

INSERT INTO client_SM #(nom_client,prenom_client,adr_client)
VALUES
(NULL ,'Ticklebottom', 'Gigglesworth', '123 Laughter Lane'),
(NULL ,'Snickerdoodle', 'Chucklenugget', '456 Haha Street'),
(NULL ,'HaHaHa', 'Jolly', '789 Guffaw Avenue');

