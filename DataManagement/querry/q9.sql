-- Classer en ordre décroissant de note et de nombre de personnage pour les consoles qui ont la meuilleure note moyenne pour les jeux sortis.

SELECT console.nom, AVG(jeu.note) AS noteMoyenne, COUNT(DISTINCT personnagejeux.personnageID) AS nombreDePersonnages
FROM console
INNER JOIN developpeur 
ON developpeur.nom = console.fabricant
INNER JOIN jeu
ON jeu.developpeurID = developpeur.developpeurID
INNER JOIN personnagejeux
ON personnagejeux.jeuID = jeu.jeuID
GROUP BY console.nom
ORDER BY noteMoyenne DESC, nombreDePersonnages DESC