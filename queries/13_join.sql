SELECT
    *
FROM
    transacao_produto AS a
    LEFT JOIN produtos AS b ON a.IdProduto = b.IdProduto
