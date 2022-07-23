SELECT usr.nome_usuario AS usuario,
COUNT(hist.id_usuario) AS qtde_musicas_ouvidas,
ROUND(SUM(mus.duracao / 60), 2) AS total_minutos
FROM SpotifyClone.usuario AS usr
INNER JOIN SpotifyClone.historico_reproducao AS hist
ON usr.id = hist.id_usuario
INNER JOIN SpotifyClone.musica AS mus
ON hist.id_musica = mus.id
GROUP BY usr.nome_usuario;