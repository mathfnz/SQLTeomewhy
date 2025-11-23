SELECT
    idCliente,
    QtdePontos,
    CASE
        WHEN QtdePontos BETWEEN 0 AND 500 THEN 'PONEI'
        WHEN QtdePontos BETWEEN 501 AND 1000 THEN 'PONEI PREMIUM'
        WHEN QtdePontos BETWEEN 1001 AND 5000 THEN 'MAGO APRENDIZ'
        WHEN QtdePontos BETWEEN 5001 AND 10000 THEN 'MAGO MESTRE'
        ELSE 'MAGO SUPREMO'
    END AS categoria
FROM
    clientes
ORDER BY qtdePontos
