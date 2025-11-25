-- dia da semana com mais pedidos em 2025
SELECT
    DATE(DtCriacao) as dia,
    COUNT(IdTransacao) AS transacoes,
    STRFTIME('%w', SUBSTR(DtCriacao, 1,10)) AS diaSemana
FROM
    transacoes
WHERE
    DATE(DtCriacao) >= '2025-01-01'
    AND DATE(DtCriacao) < '2026-01-01'
GROUP BY
    STRFTIME('%w', SUBSTR(DtCriacao, 1,10))
ORDER BY
    COUNT(IdTransacao) DESC