SELECT
MIN(ass.valor) AS faturamento_minimo,
MAX(ass.valor) AS faturamento_maximo,
ROUND(AVG(ass.valor), 2) AS faturamento_medio,
SUM(ass.valor) AS faturamento_total
FROM SpotifyClone.assinatura AS ass
INNER JOIN SpotifyClone.usuario AS usr
ON usr.id_assinatura = ass.id;