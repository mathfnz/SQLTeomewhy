WITH tb_qtdInteracaoPorDia AS (
    SELECT 
        DATE(DtCriacao) AS dataDia,
        COUNT(DISTINCT IdTransacao) AS qtdTransacoes
    FROM
        transacoes
    WHERE
        DATE(DtCriacao) >= '2025-08-25' AND
        DATE(DtCriacao) < '2025-08-30'
    GROUP BY
        dataDia
)

SELECT 
    *,
    SUM(qtdTransacoes) OVER (ORDER BY dataDia) AS  qtdTransacaoAcumulada
FROM 
    tb_qtdInteracaoPorDia