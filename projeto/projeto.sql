-- vamos construir uma tabela com o perfil comportamental dos nossos usuários.
-- quantidade de transações históricas (vida, d7, d14, d29, d56)
WITH tb_transacoes AS (
    SELECT
        IdTransacao,
        IdCliente,
        QtdePontos,
        DATE(DtCriacao) AS dtCriacao,
        julianday('now') - julianday(DATE(DtCriacao)) AS diffDate
    FROM
        transacoes
),
tb_cliente AS (
    SELECT  idCliente,
            DATE(DtCriacao) AS dtCriacao,
            julianday('now') - julianday(DATE(DtCriacao)) AS idadeNaBase
    FROM
        clientes
),
tb_sumario_transacoes AS (
SELECT
    IdCliente,
    COUNT(IdTransacao) AS qtdTransacoesVida,
    COUNT(
    CASE
        WHEN diffDate  <= 56 THEN idTransacao END
    )AS qtdTransacoes56,
    COUNT(
    CASE
        WHEN diffDate  <= 28 THEN idTransacao END
    )AS qtdTransacoes28,
    COUNT(
    CASE
        WHEN diffDate  <= 14 THEN idTransacao END
    )AS qtdTransacoes14,
    COUNT(
    CASE
        WHEN diffDate  <= 07 THEN idTransacao END
    )AS qtdTransacoes07,
    ROUND(MIN(diffDate)) AS diasUltimaInteracao
FROM
    tb_transacoes
GROUP BY
    IdCliente
)
SELECT
    t1.*,
    t2.idadeNaBase
FROM
    tb_sumario_transacoes AS t1
    LEFT JOIN tb_cliente AS t2 ON t1.IdCliente = t2.IdCliente

