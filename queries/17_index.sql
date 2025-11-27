-- dia com maior engajamento de cada aluno

WITH alunosDiaUm AS (
    SELECT
        *
    FROM
        transacoes
    WHERE DATE(DtCriacao) = '2025-08-25'
)
SELECT
    t1.IdCliente as diaT1,
    DATE(t2.DtCriacao) as dia,
    COUNT(*) as contagem
FROM
    alunosDiaUm AS t1
    LEFT JOIN transacoes AS t2
    ON t1.IdCliente = t2.IdCliente 
WHERE
    DATE(t2.DtCriacao) >= '2025-08-25' 
    AND DATE(t2.DtCriacao) < '2025-08-30'
GROUP BY
    t1.IdCliente,
    t2.DtCriacao