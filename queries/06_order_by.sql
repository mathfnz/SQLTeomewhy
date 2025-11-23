-- SELECT
--     idCliente,
--     qtdePontos
-- FROM
--     clientes
-- ORDER BY
--     qtdePontos DESC
-- LIMIT
--     10;

SELECT
    IdCliente,
    flTwitch,
    datetime(DtCriacao) as data,
    QtdePontos
FROM
    clientes
WHERE
    flTwitch = 1
ORDER BY
    data ASC, QtdePontos DESC

