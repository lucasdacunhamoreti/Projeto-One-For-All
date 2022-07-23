SELECT usr.nome_usuario AS usuario, IF (MAX(YEAR(hist.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario AS usr
INNER JOIN SpotifyClone.historico_reproducao AS hist
ON usr.id = hist.id_usuario
GROUP BY usr.id
ORDER BY usr.nome_usuario;