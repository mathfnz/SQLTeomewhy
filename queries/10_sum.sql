SELECT
    SUM(QtdePontos) as Total
FROM
    transacoes
WHERE
    (DtCriacao >= '2025-07-01' AND
    DtCriacao < '2025-08-01');

SELECT
    SUM(QtdePontos),
    SUM(CASE
        WHEN QtdePontos > 0 THEN QtdePontos 
    END) AS QtdPontosPositivos,
    SUM(CASE
        WHEN QtdePontos < 0 THEN QtdePontos 
    END) AS QtdePontosNegativos,
    COUNT(CASE
        WHEN QtdePontos > 0 THEN QtdePontos 
    END) AS QtdPontosPositivos,
    COUNT(CASE
        WHEN QtdePontos < 0 THEN QtdePontos 
    END) AS QtdeTransacoesNegativas
FROM
    transacoes
WHERE
    (DtCriacao >= '2025-07-01' AND
    DtCriacao < '2025-08-01');