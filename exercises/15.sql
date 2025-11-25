SELECT
    IdCliente,
    DATETIME(DtCriacao) dataConvertida,
    SUM(QtdePontos) as somaPontuacao
FROM
    transacoes
WHERE
    (dataConvertida >= '2025-05-01' AND
    dataConvertida <= '2025-06-01') AND
    QtdePontos > 0
GROUP BY -- o que que eu quero achatar? o ID, quero agrupar ou ID, portanto, é nele que devo agrupar
    idCliente
ORDER BY SUM(QtdePontos) DESC
LIMIT 1

