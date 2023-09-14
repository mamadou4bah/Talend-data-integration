----------------------------------------------------------------------------
--------- Script d'insertion de données dans les tables paramètres ---------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "PARAMS_LOG";


----------------------------------------------------------------------------
-------- Requête N°1 : Insertion initiale des paramètres de contexte -------
----------------------------------------------------------------------------
INSERT INTO "CONTEXTE"
VALUES 
('serverName','localhost'),
('database','IDEPENSE_2_INGESTION_DB'),
('port','5433'),
('schema_ods','DEPENSE_ODS'),
('utilisateur','postgres'),
('password','votreMotDePasse'),
('additionalParam',''),
('schema_param','PARAMS_LOG'),
('projectFolder','C:/PROJET_TALEND/IDEPENSE/'),
('fieldSeparator','|'),
('encodage','UTF-8');


----------------------------------------------------------------------------
-------- Requête N°2 : Insertion contexte relatif à l'envoi de mail --------
----------------------------------------------------------------------------

INSERT INTO "CONTEXTE"
VALUES 
('mailTo','mail du destinataire'),
('mailFrom','mail de l''expéditeur'),
('mailSenderName','Nom de l''expéditeur'),
('mailCc',''),
('mailBcc',''),
('mailSMTPHost','smtp.office365.com'),
('mailSMTPPort','587'),
('mailUsername','mail de l''expéditeur'),
('mailPassword','votreMotDePasse');


----------------------------------------------------------------------------
-------- Requête N°2 : Insertion contexte relatif à l'envoi de mail --------
----------------------------------------------------------------------------

INSERT INTO "CONTEXTE"
VALUES 
('mailTo','idataformation@gmail.com'),
('mailFrom','idataformation@outlook.com'),
('mailSenderName','Raoul ADDA'),
('mailCc',''),
('mailBcc',''),
('mailSMTPHost','smtp.office365.com'),
('mailSMTPPort','587'),
('mailUsername','idataformation@outlook.com'),
('mailPassword','votreMotDePasse');