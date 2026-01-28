-- Pour chaque pays, trouve le nombre de développeurs de jeux vidéo, le nombre de jeux développés par ces développeurs, 
-- la notes moyenne de ces jeux, le nombre de personnages créer, le nombre de console, 
-- la première année de sortie d'un jeux ainsi que la dernière année de sortie d'un jeux.
-- Utiliser STRING_AGG pour lister les genres de jeux développés par pays.


SELECT developpeur.pays AS paysDeveloppeur, COUNT(DISTINCT developpeur.nom) AS nombreDeveloppeurs, COUNT(DISTINCT jeu.titre) AS nombreJeux, 
		AVG(jeu.note) AS noteMoyenne, COUNT(DISTINCT personnagejeux.personnageID) AS nombrePersonnages, COUNT(DISTINCT console.consoleID) AS nombreConsoleSorties		
FROM developpeur
INNER JOIN jeu
ON jeu.developpeurID = developpeur.developpeurID
INNER JOIN personnagejeux
ON personnagejeux.jeuID = jeu.jeuID
LEFT JOIN console
ON console.fabricant = developpeur.nom
LEFT JOIN sortie
ON sortie.jeuID = jeu.jeuID
GROUP BY developpeur.pays
