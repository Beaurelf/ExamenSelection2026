-- Trouver le nombre de jeux par année, mais seulement pour l'années où il y a plus d'un jeux sortis
SELECT annee, COUNT(jeu.jeuID) AS nombreJeuSortis
FROM jeu
INNER JOIN sortie
ON jeu.jeuID = sortie.jeuID
GROUP BY annee
HAVING nombreJeuSortis > 1;
