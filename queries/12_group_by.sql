-- SELECT
--     IdProduto,
--     count(*)
-- FROM
--     transacao_produto
-- GROUP BY
--     IdProduto;

SELECT
    IdCliente,
    SUM(QtdePontos) AS somaPontos,
    COUNT(IdTransacao) AS qtdTransacoes
FROM
    transacoes
WHERE
    DtCriacao >= '2025-07-01'
    AND
    DtCriacao <= '2025-08-01'
GROUP BY
    IdCliente
HAVING
    SUM(QtdePontos) >= 4000
ORDER BY
    somaPontos DESC
