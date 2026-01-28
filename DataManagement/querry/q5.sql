-- Trouver tous les jeux avec le même genre que le jeu où apparaît le personnage "Luigi".
SELECT jeu.titre, jeu.genre
FROM jeu
WHERE jeu.genre IN 
(SELECT jeu.genre 
FROM jeu
INNER JOIN personnagejeux
ON personnagejeux.jeuID = jeu.jeuID
INNER JOIN personnage
ON personnage.personnageID = personnagejeux.personnageID
WHERE personnage.nom = 'Luigi'
);
