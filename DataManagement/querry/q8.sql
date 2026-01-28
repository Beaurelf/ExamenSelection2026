-- Trouver les personnages dans les jeux Nintendo après 1984,
-- avec le nombre de jeux dans lesquels ils apparaissent et la note moyenne de ces jeux

SELECT personnage.nom, COUNT(DISTINCTpersonnage.personnageID) AS nombreDeJeux, AVG(jeu.note) AS noteMoyenne
FROM personnagejeux
INNER JOIN personnage
ON personnage.personnageID = personnagejeux.personnageID
INNER JOIN jeu
ON jeu.jeuID = personnagejeux.jeuID
WHERE personnagejeux.jeuID IN
	(
		SELECT jeu.jeuID
		FROM jeu
		INNER JOIN sortie
		ON jeu.jeuID = sortie.jeuID
		INNER JOIN developpeur
		ON jeu.developpeurID = developpeur.developpeurID
		WHERE developpeur.nom = 'Nintendo' AND sortie.annee > 1984
	)
GROUP BY personnage.personnageID
 
