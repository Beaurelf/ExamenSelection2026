-- Trouver le nom des personnages qui apparaissent dans plus d'un jeux.

SELECT nom
FROM personnage 
WHERE 
personnageID IN
(
	SELECT personnageID
	FROM personnagejeux
	GROUP BY personnageID
	HAVING COUNT(jeuID) > 1
) 

