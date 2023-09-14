------------------------------------------------------------
|Étape de développement 1 : Base de données  ==> PostgreSQL|
------------------------------------------------------------
Connexion à la base de données : COM_INGESTION_DB

Exécution des scripts SQL
   1-script_create_schema_dwh.sql 
	Création du schéma VENTE_DWH

   2-script_create_table_dwh.sql
	Création des différentes tables DWH

   3-script_create_table_ods.sql
	Mise à jour de la table ODS_VENTE

   4-script_insert_context_variable.sql
	Insertion des données dans la table CONTEXTE 

   5-script_select_table_dwh.sql
	Ce script permet de sélectionner les données insérées dans les différentes tables.

   6-script_truncate_table_dwh.sql
	Ce script permet de supprimer les données présentes dans les différentes tables DWH.




----------------------------------------------------------------------------
| Étape de développement 2 : Processus d’intégration de données ==> Talend |
----------------------------------------------------------------------------

	1- Ouverture du projet Talend : ICOMMERCE_REPORTING
	
	2- Création du groupe de contexte DWH
	
	3- Création des métadonnées : Connexion à la base de données
	
	4- Création des jobs DWH
	
	5- Création du job principal 

NB : Vous trouverez dans ce répertoire les fichiers ci-après : 

	jGenerateCalendar.zip : Le job permettant d'alimenter la table DIM_CALENDRIER
	joursFeries.xlsx : Fichier utilisé dans le job jGenerateCalendar
	codeJavaUseInJobDWH.java : Les codes java utilisés dans les composants tJava	
	
	
Liste des composants utilisés ainsi que leurs familles d'appartenance: 
	Orchestration : tPrejob, tPostjob, tRunJob
	Misc          : tContextLoad
	Log & Errors  : tChronometerStart, tChronometerStop
	Database      : tDBConnection, tDBCommit, tDBClose, tDBInput, tDBOutput
	Custom Code   : tJava
	Processing    : tMap	