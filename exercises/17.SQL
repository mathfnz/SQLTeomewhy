SELECT
    COUNT(*),
    DescCategoriaProduto
FROM
    produtos
GROUP BY
    DescCategoriaProduto
