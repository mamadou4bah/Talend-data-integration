----------------------------------------------------------------------------
------------ Script de sélection des données insérées dans le DWH ----------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "DEPENSE_DWH";


-- Liste des sous catégories
SELECT * FROM "DIM_SOUS_CATEGORIE";

-- Liste des dépenses
SELECT * FROM "FAIT_DEPENSE";

-- Calendrier
SELECT * FROM "DIM_CALENDRIER";


-- Définir le schéma à utiliser
SET SEARCH_PATH = "DEPENSE_ODS";

SELECT * FROM "ODS_DEPENSE";