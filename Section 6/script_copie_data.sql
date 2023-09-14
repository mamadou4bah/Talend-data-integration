"
         /*Insertion des données dans la table TB_TYPE_CLIENT*/
--- Suppression des données présentes dans la table TB_TYPE_CLIENT
TRUNCATE  \""+context.schema+"\".\"TB_TYPE_CLIENT\" CASCADE;

--- Copie des données présentes dans le fichier TB_TYPE_CLIENT.csv
COPY   \""+context.schema+"\".\"TB_TYPE_CLIENT\"
FROM 'C:/Formation Talend/Section 6/TB_TYPE_CLIENT.csv'
DELIMITER '|'
CSV HEADER;


         /*Insertion des données dans la table TB_CATEGORIE*/
-- Suppression des données présentes dans la table TB_CATEGORIE
TRUNCATE \""+context.schema+"\".\"TB_CATEGORIE\" CASCADE;

-- Copie des données présentes dans le fichier TB_CATEGORIE.csv 
COPY  \""+context.schema+"\".\"TB_CATEGORIE\" 
FROM 'C:/Formation Talend/Section 6/TB_CATEGORIE.csv'
DELIMITER '|'
CSV HEADER;


         /*Insertion des données dans la table TB_SOUS_CATEGORIE*/
--- Suppression des données présentes dans la table TB_SOUS_CATEGORIE
TRUNCATE \""+context.schema+"\".\"TB_SOUS_CATEGORIE\" CASCADE;

---- Copie des données présentes dans le fichier TB_SOUS_CATEGORIE.csv
COPY  \""+context.schema+"\".\"TB_SOUS_CATEGORIE\" 
FROM 'C:/Formation Talend/Section 6/TB_SOUS_CATEGORIE.csv'
DELIMITER '|'
CSV HEADER;


         /*Insertion des données dans la table TB_CLIENT*/
--- Supprimer la contrainte not null de la colonne CD_POSTAL_CLIENT
ALTER TABLE \""+context.schema+"\".\"TB_CLIENT\" ALTER COLUMN \"CD_POSTAL_CLIENT\" DROP NOT NULL;

--- Suppression des données présentes dans la table TB_CLIENT
TRUNCATE \""+context.schema+"\".\"TB_CLIENT\" CASCADE;

--- Copie des données présentes dans le fichier TB_CLIENT.csv
COPY  \""+context.schema+"\".\"TB_CLIENT\"
FROM 'C:/Formation Talend/Section 6/TB_CLIENT.csv'
DELIMITER '|'
CSV HEADER;


         /*Insertion des données dans la table TB_PRODUIT*/
--- Augmenter la taille de la colonne NOM_PRODUIT.
ALTER TABLE \""+context.schema+"\".\"TB_PRODUIT\" ALTER COLUMN \"NOM_PRODUIT\" TYPE VARCHAR(255) ;

--- Suppression des données présentes dans la table TB_PRODUIT
TRUNCATE \""+context.schema+"\".\"TB_PRODUIT\" CASCADE;

---- Copie des données présentes dans le fichier TB_PRODUIT.csv
COPY  \""+context.schema+"\".\"TB_PRODUIT\"
FROM 'C:/Formation Talend/Section 6/TB_PRODUIT.csv'
DELIMITER '|'
CSV HEADER;


         /*Insertion des données dans la table TB_VENTE*/
--- Suppression des données présentes dans la table TB_VENTE
TRUNCATE \""+context.schema+"\".\"TB_VENTE\" CASCADE;

---- Copie des données présentes dans le fichier TB_VENTE.csv
COPY  \""+context.schema+"\".\"TB_VENTE\"
FROM 'C:/Formation Talend/Section 6/TB_VENTE.csv'
DELIMITER '|'
CSV HEADER;


         /*Insertion des données dans la table TB_DETAIL_VENTE*/
--- Suppression des données présentes dans la table TB_DETAIL_VENTE
TRUNCATE \""+context.schema+"\".\"TB_DETAIL_VENTE\" CASCADE;

---- Copie des données présentes dans le fichier TB_DETAIL_VENTE.csv
COPY  \""+context.schema+"\".\"TB_DETAIL_VENTE\"
FROM 'C:/Formation Talend/Section 6/TB_DETAIL_VENTE.csv'
DELIMITER '|'
CSV HEADER;
"