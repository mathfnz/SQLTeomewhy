SELECT
    idCliente,
    qtdePontos
FROM
    clientes
WHERE
    qtdePontos >= 100 AND qtdePontos <= 200
    -- qtdePontos BETWEEN 100 AND 200