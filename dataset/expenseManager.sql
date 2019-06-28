#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: entreprise
#------------------------------------------------------------

CREATE TABLE entreprise(
        entSiret Int NOT NULL ,
        entNom   Varchar (50) NOT NULL
	,CONSTRAINT entreprise_PK PRIMARY KEY (entSiret)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: salarie
#------------------------------------------------------------

CREATE TABLE salarie(
        salId       Int  Auto_increment  NOT NULL ,
        salFonction Varchar (50) NOT NULL ,
        salMail     Varchar (50) NOT NULL ,
        salMdp      Varchar (255) NOT NULL ,
        salNom      Varchar (50) NOT NULL ,
        salPrenom   Varchar (50) NOT NULL ,
        entSiret    Int NOT NULL
	,CONSTRAINT salarie_PK PRIMARY KEY (salId)

	,CONSTRAINT salarie_entreprise_FK FOREIGN KEY (entSiret) REFERENCES entreprise(entSiret)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: client
#------------------------------------------------------------

CREATE TABLE client(
        cliId       Int  Auto_increment  NOT NULL ,
        cliNom      Varchar (50) NOT NULL ,
        cliPrenom   Varchar (50) NOT NULL ,
        cliFonction Varchar (50) NOT NULL ,
        cliContact  Varchar (50) NOT NULL ,
        entSiret    Int NOT NULL
	,CONSTRAINT client_PK PRIMARY KEY (cliId)

	,CONSTRAINT client_entreprise_FK FOREIGN KEY (entSiret) REFERENCES entreprise(entSiret)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: frais
#------------------------------------------------------------

CREATE TABLE frais(
        fraId          Int  Auto_increment  NOT NULL ,
        fraType        Varchar (50) NOT NULL ,
        fraDate        Date NOT NULL ,
        fraEntNom      Varchar (50) NULL ,
        fraStatus      ENUM('Nouveau','Refusé','Approuvé','Attente') ,
        fraMontant     Float NOT NULL ,
        fraMontantRemb Float  ,
        salId          Int NOT NULL ,
        cliId          Int
	,CONSTRAINT frais_PK PRIMARY KEY (fraId)

	,CONSTRAINT frais_salarie_FK FOREIGN KEY (salId) REFERENCES salarie(salId)
	,CONSTRAINT frais_client0_FK FOREIGN KEY (cliId) REFERENCES client(cliId)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: trajet
#------------------------------------------------------------

CREATE TABLE trajet(
        fraId          Int NOT NULL ,
        traKilometrage Int NOT NULL ,
        traDepart      Varchar (50) NOT NULL ,
        traArrivee     Varchar (50) NOT NULL ,
        fraType        Varchar (50) NOT NULL ,
        fraDate        Date NOT NULL ,
        fraEntNom      Varchar (50) NOT NULL ,
        fraStatus      ENUM('Nouveau','Refusé','Approuvé','Attente'),
        fraMontant     Float NOT NULL ,
        fraMontantRemb Float ,
        salId          Int NOT NULL ,
        cliId          Int 
	,CONSTRAINT trajet_PK PRIMARY KEY (fraId)

	,CONSTRAINT trajet_frais_FK FOREIGN KEY (fraId) REFERENCES frais(fraId)
	,CONSTRAINT trajet_salarie_FK FOREIGN KEY (salId) REFERENCES salarie(salId)
	,CONSTRAINT trajet_client1_FK FOREIGN KEY (cliId) REFERENCES client(cliId)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: justificatif
#------------------------------------------------------------

CREATE TABLE justificatif(
        fraId  Int NOT NULL ,
        jusNum Int NOT NULL ,
        jusUrl Varchar (254) NOT NULL
	,CONSTRAINT justificatif_PK PRIMARY KEY (fraId,jusNum)
	,CONSTRAINT justificatif_frais_FK FOREIGN KEY (fraId) REFERENCES frais(fraId)
)ENGINE=InnoDB;

ALTER TABLE trajet ADD CONSTRAINT supZero CHECK (traKilometrage>0 AND fraMontant>0);
ALTER TABLE frais ADD CONSTRAINT supZero CHECK (fraMontant>0);
