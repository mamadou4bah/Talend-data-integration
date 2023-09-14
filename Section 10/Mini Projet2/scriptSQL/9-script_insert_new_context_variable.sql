----------------------------------------------------------------------------
--------- Script d'insertion de données dans les tables paramètres ---------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "PARAMS_LOG";


----------------------------------------------------------------------------
----- Requête N°1 : Insertion des paramètres de contexte relatif au DWH ----
----------------------------------------------------------------------------
INSERT INTO "CONTEXTE"
VALUES 
('schema_dwh','DEPENSE_DWH'),
('dtDebCalendrier','2020-01-01 00:00:00'),
('dtFinCalendrier','2025-12-31 00:00:00'),
('nbJoursCalendrier','0');


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

SELECT * FROM  "CONTEXTE";

