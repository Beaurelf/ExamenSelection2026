-- Trouver le noms de tout les personnages qui apparaissent dans des jeux fait par Capcom après l'anné 1984.
SELECT nom 
FROM personnage
WHERE personnageID IN
(
	SELECT personnageID
	FROM personnagejeux
	WHERE jeuID IN
		(
			SELECT jeu.jeuID
			FROM jeu
			INNER JOIN sortie
			ON jeu.jeuID = sortie.jeuID
			INNER JOIN developpeur
			ON jeu.developpeurID = developpeur.developpeurID
			WHERE developpeur.nom = 'Capcom' AND sortie.annee > 1984
		)
	GROUP BY personnageID
)