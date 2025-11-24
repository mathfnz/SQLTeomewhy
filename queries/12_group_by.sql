-- SELECT
--     IdProduto,
--     count(*)
-- FROM
--     transacao_produto
-- GROUP BY
--     IdProduto;

SELECT
    IdCliente,
    sum(QtdePontos) AS SOMA,
    DATETIME(DtCriacao) as DataFormatada
FROM
    transacoes
WHERE
    DataFormatada >= '2025-07-01'
    AND
    DataFormatada <= '2025-08-01'
GROUP BY
    IdCliente
