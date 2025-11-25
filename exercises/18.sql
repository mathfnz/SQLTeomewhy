-- valor médio de pontos positivos por dia

SELECT
    DATE(DtCriacao) AS dataFormatada,
    AVG(QtdePontos) AS mediaPontosDiaria
FROM
    transacoes
WHERE
    QtdePontos > 0
GROUP BY 
    DATE(DtCriacao)
ORDER BY
    DATE(DtCriacao)