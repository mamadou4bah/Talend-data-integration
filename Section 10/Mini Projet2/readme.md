------------------------------------------------------------
|Étape de développement 1 : Base de données  ==> PostgreSQL|
------------------------------------------------------------
Création d’une base de données : IDEP_INGESTION_DB

Exécution des scripts SQL
   1-script_create_schema.sql 
	Création des schémas DEPENSE_ODS et PARAMS_LOG 

   2-script_create_table_ods.sql
	Création des différentes tables ODS

   3-script_create_table_params_log.sql
	Création de la table CONTEXTE

   4-script_insert_context_variable.sql
	Insertion des données dans la table CONTEXTE 
    NB : Veuillez modifier les paramètres de connexion à la base de données.

   5-script_select_table_ods.sql
	Ce script permet de sélectionner les données insérées dans les différentes tables.

   6-script_truncate_table_ods.sql
	Ce script permet de supprimer les données présentes dans les différentes tables.
	



------------------------------------------------------------
| Étape de développement 2 : Répertoire de données du jour |
------------------------------------------------------------
Création du répertoire contenant les données : C:\PROJET_TALEND\IDEPENSE

Dépôt des répertoires du jour contenant les fichiers plats.            
Exemple : 20230308
NB : Pour faire vos tests, vous devez avoir le répetoire du jour du test.
     Exemple : Si vous faites vos développement le 08/03/2023, vous devez avoir un répertoire du jour nommé : 20230308
	 Nous avons mis à votre disposition six fichiers plats. Les fichiers plats sont dans le dossier : csvFiles
			1- IDEP_20230308_CATEGORY.csv
			2- IDEP_20230308_SOUS_CATEGORIE.csv
			3- IDEP_20230308_DEPENSE.csv
     Veuillez les récupérer et mettre cela dans le répertoire adapté afin de tester vos jobs.
	 Aussi, veuillez changer la date qui se trouve dans le nom des fichiers et mettre la date du jour, toujours au format YYYYMMDD.
	 



----------------------------------------------------------------------------
| Étape de développement 3 : Processus d’intégration de données ==> Talend |
----------------------------------------------------------------------------

	1- Création du projet Talend : ICOMMERCE_REPORTING
	
	2- Création des groupes de contexte 
	
	3- Création des métadonnées : Connexion à la base de données
	
	4- Configuration du chargement implicite des variables de contexte
	
	5- Création des différents schémas génériques : Fichiers plats
	
	6- Création des job ODS (Transformation et Chargement de la données)
	
	7- Création du job principal 

NB : Vous trouverez dans ce répertoire les fichiers ci-après : 

	codeJavaUseInJobODS.java : Les codes java utilisés dans les composants tJava
	customCode_0.1.item : Routine utilisée. Il faut créer une routine utilisateur et y mettre ce code
	
	
	
	
Liste des composants utilisés ainsi que leurs familles d'appartenance: 
	Orchestration : tPrejob, tPostjob, tFileList, tRunJob
	Misc          : tContextLoad
	Log & Errors  : tChronometerStart, tChronometerStop, tDie
	Database      : tDBConnection, tDBCommit, tDBClose, tDBInput, tDBOutput
	Custom Code   : tSetGlobalVar, tJava
	File          : tFileInputDelimited
	Processing    : tMap, tFilterRow, tUniqRow
	

	 