#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Administrateur
#------------------------------------------------------------

CREATE TABLE Administrateur(
        NumAdministrateur         Int  Auto_increment  NOT NULL ,
        IdentifiantAdministrateur Varchar (50) NOT NULL ,
        MotDePasseAdministrateur  Varchar (50) NOT NULL
	,CONSTRAINT Administrateur_PK PRIMARY KEY (NumAdministrateur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Particulier
#------------------------------------------------------------

CREATE TABLE Particulier(
        NumParticulier           Int  Auto_increment  NOT NULL ,
        NomParticulier           Varchar (50) NOT NULL ,
        PrenomParticulier        Varchar (50) NOT NULL ,
        AutresPrenomsParticulier Varchar (50) NOT NULL
	,CONSTRAINT Particulier_PK PRIMARY KEY (NumParticulier)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Entreprise
#------------------------------------------------------------

CREATE TABLE Entreprise(
        NumSIRET                 Varchar (10) NOT NULL ,
        NomEntreprise            Varchar (50) NOT NULL ,
        NumTVA                   Int NOT NULL ,
        NumInscriptionEntreprise Int NOT NULL ,
        SitesEntreprise          Varchar (50) NOT NULL ,
        TelephoneEntreprise      Int NOT NULL
	,CONSTRAINT Entreprise_PK PRIMARY KEY (NumSIRET)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Téléphones
#------------------------------------------------------------

CREATE TABLE Telephones(
        Telephone      Varchar (10) NOT NULL ,
        TypeTelephone  Varchar (10) NOT NULL ,
        NumParticulier Int NOT NULL
	,CONSTRAINT Telephones_PK PRIMARY KEY (Telephone)

	,CONSTRAINT Telephones_Particulier_FK FOREIGN KEY (NumParticulier) REFERENCES Particulier(NumParticulier)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: SitesWeb
#------------------------------------------------------------

CREATE TABLE SitesWeb(
        Num                      Int  Auto_increment  NOT NULL ,
        AdresseSiteWebEntreprise Varchar (50) NOT NULL ,
        NumSIRET                 Varchar (10) NOT NULL
	,CONSTRAINT SitesWeb_PK PRIMARY KEY (Num)

	,CONSTRAINT SitesWeb_Entreprise_FK FOREIGN KEY (NumSIRET) REFERENCES Entreprise(NumSIRET)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Adresses
#------------------------------------------------------------

CREATE TABLE Adresses(
        Id          Int  Auto_increment  NOT NULL ,
        NumRue      Int NOT NULL ,
        Etage       Int NOT NULL ,
        Rue         Varchar (50) NOT NULL ,
        CodePostale Int NOT NULL ,
        Ville       Varchar (50) NOT NULL ,
        TypeAdresse Varchar (10) NOT NULL
	,CONSTRAINT Adresses_PK PRIMARY KEY (Id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Mails
#------------------------------------------------------------

CREATE TABLE Mails(
        Num            Int  Auto_increment  NOT NULL ,
        Mail           Varchar (50) NOT NULL ,
        TypeMail       Varchar (10) NOT NULL ,
        NumParticulier Int NOT NULL
	,CONSTRAINT Mails_PK PRIMARY KEY (Num)

	,CONSTRAINT Mails_Particulier_FK FOREIGN KEY (NumParticulier) REFERENCES Particulier(NumParticulier)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Habiter
#------------------------------------------------------------

CREATE TABLE Habiter(
        Id             Int NOT NULL ,
        NumParticulier Int NOT NULL
	,CONSTRAINT Habiter_PK PRIMARY KEY (Id,NumParticulier)

	,CONSTRAINT Habiter_Adresses_FK FOREIGN KEY (Id) REFERENCES Adresses(Id)
	,CONSTRAINT Habiter_Particulier0_FK FOREIGN KEY (NumParticulier) REFERENCES Particulier(NumParticulier)
)ENGINE=InnoDB;

