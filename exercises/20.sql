-- qual o produto mais transacionado
SELECT
    COUNT(IdTransacao) as contadorProduto,
    IdProduto
FROM
    transacao_produto
GROUP BY
    IdProduto
ORDER BY COUNT(IdTransacao) DESC 