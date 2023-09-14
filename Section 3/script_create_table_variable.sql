CREATE SCHEMA "CONFIG";

SET SEARCH_PATH = "CONFIG";

--- Création de la table "CONFIG"."VARIABLES"
DROP TABLE IF EXISTS "VARIABLES" ;
CREATE TABLE "VARIABLES" 
(
"key" VARCHAR(100) NOT NULL,
"value" VARCHAR(255),
CONSTRAINT "VARIABLES_PKEY" PRIMARY KEY("key")
);

-- Insertion des données dans la table "VARIABLES"
INSERT INTO "VARIABLES"
VALUES ('serverName', 'localhost'),
       ('database', 'FORMATION_TALEND'),
	   ('port', '5433'),
	   ('schema', 'I_OPE'),
	   ('utilisateur', 'postgres'),
	   ('password', 'votreMotDePasse'),
       ('additionalParams', ''),
	   ('formationDirectory', 'C:/Formation Talend/'), 
	   ('section2Directory', 'Section 2/'),
	   ('section3Directory', 'Section 3/');


-- Affichage des données de la table "VARIABLES"	   
SELECT * FROM "VARIABLES";	   