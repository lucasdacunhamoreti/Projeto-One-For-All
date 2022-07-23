SELECT
art.nome_artista AS artista,
alb.nome_album AS album,
COUNT(seg.id_usuario) AS seguidores 
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb
ON art.id = alb.id_artista
INNER JOIN SpotifyClone.seguindo_artista AS seg
ON art.id = seg.id_artista
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;