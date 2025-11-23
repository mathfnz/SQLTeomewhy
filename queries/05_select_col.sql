SELECT
    -- IdCliente,
    -- QtdePontos,
    -- QtdePontos + 10 as QtdePontosNovos,
    DtCriacao,
    datetime(DtCriacao) as DtCriacaoFormatada
FROM
    clientes