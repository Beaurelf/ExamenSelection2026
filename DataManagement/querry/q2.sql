-- Trouver la somme du nombre de jeux fait par Nintendo et Playstation 
SELECT COUNT(*) 
FROM jeu 
INNER JOIN developpeur 
ON developpeur.developpeurID = jeu.developpeurID 
WHERE developpeur.nom = 'Nintendo' OR developpeur.nom = 'Playstation'
