/*Exemple pour un particulier*/
INSERT INTO `particulier` (`NumParticulier`, `NomParticulier`, `PrenomParticulier`, `AutresPrenomsParticulier`) VALUES ('2', 'Durand', 'Nicolas', 'Patrick, Serges, Georges');

/*Exemple pour un mail*/
INSERT INTO `mails` (`Num`, `Mail`, `TypeMail`, `NumParticulier`) VALUES ('1', 'decomep@gmail.com', 'pro', '2');

/*Exemple pour un administrateur*/
INSERT INTO `administrateur` (`NumAdministrateur`, `IdentifiantAdministrateur`, `MotDePasseAdministrateur`) VALUES ('1', 'abcdef123456', '123456abcdef');

/*Exemple pour une adresse*/
INSERT INTO `adresses` (`Id`, `NumRue`, `Etage`, `Rue`, `CodePostale`, `Ville`, `TypeAdresse`) VALUES ('1', '12', '2', 'Rue de Champagne', '51100', 'Reims', 'Particulie');

INSERT INTO habiter (ID, NumParticulier) VALUES ('1', '2');

/*Exemple pour une entreprise*/
INSERT INTO `entreprise` (`NumSIRET`, `NomEntreprise`, `NumTVA`, `NumInscriptionEntreprise`, `SitesEntreprise`, `TelephoneEntreprise`) VALUES ('6515651651', 'Decomep', '65416', '12253', 'Chalindrey', '0325487654');

/*Exemple pour un site web*/
INSERT INTO `sitesweb` (`Num`, `AdresseSiteWebEntreprise`, `NumSIRET`) VALUES (NULL, 'www.decomep.com', '6515651651');

/*Exemple pour un téléphone*/
INSERT INTO `telephones` (`Telephone`, `TypeTelephone`, `NumParticulier`) VALUES ('0325487654', 'pro', '2');

/*Quel mot rechercher dans la catégorie entreprise*/
SELECT *
FROM entreprise
WHERE entreprise.NumSIRET = 'Decomep' or entreprise.NomEntreprise='Decomep' or entreprise.NumTVA='Decomep'or entreprise.NumInscriptionEntreprise='Decomep'or entreprise.SitesEntreprise='Decomep'or entreprise.TelephoneEntreprise='Decomep' ;

/*Se connecter, bon identifiant et bon mot de passe*/
SELECT *
FROM administrateur
WHERE administrateur.IdentifiantAdministrateur = 'abcdef123456' and administrateur.MotDePasseAdministrateur = '123456abcdef';

/*Modifier un contact : le nom Durand en Durant*/
UPDATE particulier set NomParticulier = 'Durant' WHERE NumParticulier = '2';

/*Lister tout ceux qui ont les recherches suivante*/
SELECT *
FROM particulier LEFT JOIN mails ON mails.NumParticulier = particulier.NumParticulier 
LEFT JOIN telephones ON telephones.NumParticulier = particulier.NumParticulier 
LEFT JOIN habiter ON habiter.NumParticulier = particulier.NumParticulier 
INNER JOIN adresses ON habiter.Id = adresses.Id;

/*Supprimer un contact (pas oublier de mettre les options en cascade)*/
DELETE FROM particulier
WHERE NumParticulier = '2';