SELECT
    COUNT( DISTINCT DATE(DtCriacao)) AS totalDias,
    SUM(qtdePontos) AS totalPontos,
    SUM(qtdePontos) / COUNT( DISTINCT DATE(DtCriacao))
FROM
    transacoes
WHERE
    QtdePontos > 0