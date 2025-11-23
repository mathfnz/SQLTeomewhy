SELECT
    DtCriacao,
    datetime(DtCriacao) as DataFormatada,
    strftime('%w', DtCriacao) as DiaSemana
FROM
    transacoes
WHERE
    strftime('%w', DtCriacao) IN ('6', '0')