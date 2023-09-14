----------------------------------------------------------------------------
----------------- Script de création des différentes tables ----------------
----------------------------------------------------------------------------

-- Définir le schéma à utiliser
SET SEARCH_PATH = "DEPENSE_ODS";


----------------------------------------------------------------------------
----------------- Table N°1 : "DEPENSE_ODS"."ODS_CATEGORIE" ----------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_CATEGORIE" ;
CREATE TABLE "ODS_CATEGORIE" 
(
"CD_CATEGORIE"    VARCHAR(50)  NOT NULL,
"LB_CATEGORIE"    VARCHAR(100) NOT NULL,
"LB_NOM_FICHIER"  VARCHAR(100) NOT NULL,	
"DT_INSERTION"    TIMESTAMP    NOT NULL,
"BL_LIGNE_ACTIVE" INTEGER      NOT NULL,
"LB_JOB_NAME"	  VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
--------------- Table N°2 : "DEPENSE_ODS"."ODS_SOUS_CATEGORIE" -------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_SOUS_CATEGORIE" ;
CREATE TABLE "ODS_SOUS_CATEGORIE" 
(
"CD_SOUS_CATEGORIE" VARCHAR(50)  NOT NULL,
"LB_SOUS_CATEGORIE" VARCHAR(100) NOT NULL,
"CD_CATEGORIE"    	VARCHAR(50)  NOT NULL,	
"LB_NOM_FICHIER"  	VARCHAR(100) NOT NULL,	
"DT_INSERTION"    	TIMESTAMP    NOT NULL,
"BL_LIGNE_ACTIVE" 	INTEGER      NOT NULL,
"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
------------------- Table N°3 : "DEPENSE_ODS"."ODS_DEPENSE" ----------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_DEPENSE" ;
CREATE TABLE "ODS_DEPENSE" 
(
"ID_DEPENSE" 		VARCHAR(50)  NOT NULL,
"DT_DEPENSE" 		TIMESTAMP    NOT NULL,
"LB_DEPENSE"	    VARCHAR(255)  NOT NULL,
"CD_SOUS_CATEGORIE" VARCHAR(50)  NOT NULL,	
"MT_DEPENSE" 	 	NUMERIC      NOT NULL,
"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,	
"DT_INSERTION"    	TIMESTAMP    NOT NULL,
"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
--------------------- Table N°4 : "VENTE_ODS"."ODS_REJET" ------------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_REJET" ;
CREATE TABLE "ODS_REJET" 
(
"LB_CHEMIN_FICHIER" VARCHAR(255) NOT NULL,
"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,	
"NUM_LIGNE_REJET" 	INTEGER      NOT NULL,
"LB_LIGNE_REJET" 	VARCHAR(500) NOT NULL,
"LB_MESSAGE_REJET" 	VARCHAR(100) NOT NULL,
"LB_NOM_FLUX"		VARCHAR(100) NOT NULL,
"DT_REJET"    		TIMESTAMP    NOT NULL,
"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL
);