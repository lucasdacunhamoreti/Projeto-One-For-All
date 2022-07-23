SELECT
art.nome_artista AS artista,
alb.nome_album AS album
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb
ON alb.id_artista = art.id
GROUP BY artista, album
HAVING art.nome_artista = "Walter Phoenix"
ORDER BY album;