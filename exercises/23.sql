WITH tb_clientePrimeiroDiaCurso AS (
    SELECT
        DISTINCT IdCliente
    FROM
        transacoes
    WHERE
        DATE(DtCriacao) >= '2025-08-25' AND DATE(DtCriacao) < '2025-08-26'
)
SELECT
    DATE(t2.DtCriacao) AS dtDia,
    COUNT(DISTINCT t1.IdCliente) AS qtdeCliente,
    1.0 * COUNT(DISTINCT t1.IdCliente) / (SELECT COUNT(*) FROM tb_clientePrimeiroDiaCurso) AS porcentagemRetencao,
    1 - 1.0 * COUNT(DISTINCT t1.IdCliente) / (SELECT COUNT(*) FROM tb_clientePrimeiroDiaCurso) AS porcentagemChurn
FROM
    tb_clientePrimeiroDiaCurso AS t1
LEFT JOIN transacoes as t2 ON t1.IdCliente = t2.IdCliente
WHERE
    DATE(t2.DtCriacao) >= '2025-08-25' AND DATE(t2.DtCriacao) < '2025-08-30'
GROUP BY dtDia