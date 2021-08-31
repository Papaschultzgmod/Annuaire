/*Exemple pour un particulier*/
INSERT INTO `particulier` (`NumParticulier`, `NomParticulier`, `PrenomParticulier`, `AutresPrenomsParticulier`) VALUES ('2', 'Durand', 'Nicolas', 'Patrick, Serges, Georges');

/*Exemple pour un mail*/
INSERT INTO `mails` (`Num`, `Mail`, `TypeMail`, `NumParticulier`) VALUES ('1', 'decomep@gmail.com', 'pro', '2');

/*Exemple pour un administrateur*/
INSERT INTO `administrateur` (`NumAdministrateur`, `IdentifiantAdministrateur`, `MotDePasseAdministrateur`) VALUES ('1', 'abcdef123456', '123456abcdef');

/*Exemple pour une adresse*/
INSERT INTO `adresses` (`Id`, `NumRue`, `Etage`, `Rue`, `CodePostale`, `Ville`, `TypeAdresse`) VALUES ('', '12', '2', 'Rue de Champagne', '51100', 'Reims', 'Particulie');

/*Exemple pour une entreprise*/
INSERT INTO `entreprise` (`NumSIRET`, `NomEntreprise`, `NumTVA`, `NumInscriptionEntreprise`, `SitesEntreprise`, `TelephoneEntreprise`) VALUES ('6515651796', 'Decomep', '65416', '12253', 'Chalindrey', '0325487654');

/*Exemple pour un site web*/
INSERT INTO `sitesweb` (`Num`, `AdresseSiteWebEntreprise`, `NumSIRET`) VALUES (NULL, 'www.decomep.com', '6515651651');

/*Exemple pour un téléphone*/
INSERT INTO `telephones` (`Telephone`, `TypeTelephone`, `NumParticulier`) VALUES ('0325487654', 'pro', '2');