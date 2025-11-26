SELECT
    COUNT(DISTINCT IdCliente)
FROM
    transacoes AS t1
WHERE t1.IdCliente IN(
    SELECT
        DISTINCT idCliente
    FROM
        transacoes
    WHERE
        DATE(DtCriacao) = '2025-08-25') AND 
        DATE(t1.DtCriacao) = '2025-08-29'