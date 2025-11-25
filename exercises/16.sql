SELECT
    idCliente,
    COUNT(DISTINCT IdTransacao) as transacoesUnicas
FROM
    transacoes
WHERE
    DtCriacao >= '2024-01-01' AND DtCriacao < '2025-01-01'
GROUP BY
    idCliente
ORDER BY 
    transacoesUnicas DESC
LIMIT 1