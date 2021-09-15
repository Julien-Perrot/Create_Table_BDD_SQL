-- Créer une table immobilier. 
-- Cette table contiendra les colonnes suivantes :
-- Id
-- Titre
-- Prix
-- Quartier
-- Il faudra ajouter une colonne “vendu” qui sera à 0 si le bien n’est pas vendu et à 1 s’il est vendu.
-- Il faudra ensuite modifier cette colonne afin de changer le nom de la colonne en “est_vendu”.
-- Puis, supprimer la colonne “est_vendu”.


CREATE TABLE IF NOT EXISTS immobilier (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    titre VARCHAR(50) NOT NULL,
    prix INT UNSIGNED NOT NULL,
    quartier VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

ALTER TABLE immobilier
ADD COLUMN vendu TINYINT NOT NULL;

ALTER TABLE immobilier
CHANGE vendu est_vendu TINYINT NOT NULL;

ALTER TABLE immobilier
DROP COLUMN est_vendu;