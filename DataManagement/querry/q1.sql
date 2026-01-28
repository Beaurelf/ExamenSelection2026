-- Trouver seulement le tire et le genre des jeux qui sont plus vieux que 1987
SELECT TITRE, GENRE 
FROM jeu 
INNER JOIN sortie 
ON jeu.jeuID = sortie.jeuID 
WHERE sortie.annee < 1987

