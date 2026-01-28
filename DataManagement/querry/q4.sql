-- Trouver le nom du jeux et des personnage dans ce jeux pour les jeux avec une note supérieur à la moyenne de tout les jeux.
SELECT jeu.titre, personnage.nom
FROM jeu
INNER JOIN personnagejeux
ON personnagejeux.jeuID = jeu.jeuID
INNER JOIN personnage
ON personnage.personnageID = personnagejeux.personnageID
WHERE jeu.note > (SELECT AVG(note) FROM jeu);

