SELECT
COUNT(hist.id_musica) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducao AS hist
LEFT JOIN SpotifyClone.usuario AS usr
ON hist.id_usuario = usr.id
WHERE usr.nome_usuario = "Bill";