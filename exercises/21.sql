-- produto com mais pontos transacionais
SELECT  
    IdProduto,
    SUM(vlProduto) AS totalPontos
FROM
    transacao_produto
GROUP BY
    IdProduto
HAVING
    totalPontos > 0
ORDER BY
    SUM(vlProduto) DESC