-- 1 ) Créer une table “animal” dans une nouvelle base de données “zoo”.
-- Chaque animal aura un ID, un nom, une date de naissance et une couleur.

CREATE DATABASE zoo CHARACTER SET 'utf8';
USE zoo;
CREATE TABLE animal (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom VARCHAR(20) NOT NULL,
    date_de_naissance DATE NOT NULL,
    couleur VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;


-- 2) Créer une table “musiques” dans une nouvelle base de données “diiizer”.
-- Chaque musique aura un ID, un artiste, un titre, une durée (en secondes), un bpm et un genre.

CREATE DATABASE diiizer CHARACTER SET 'utf8';
USE diiizer;
CREATE TABLE IF NOT EXISTS musiques (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artiste VARCHAR(30) NOT NULL,
    titre VARCHAR (255) NOT NULL,
    durer SMALLINT NOT NULL,
    bpm TINYINT NOT NULL,
    genre VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;