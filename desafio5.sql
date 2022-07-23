SELECT mus.nome_musica AS cancao,
COUNT(hist.id_usuario) AS reproducoes
FROM SpotifyClone.musica AS mus 
INNER JOIN SpotifyClone.historico_reproducao AS hist
ON mus.id = hist.id_musica
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;