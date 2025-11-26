WITH 
    tb_clientePrimeiroDia AS (
        SELECT
            DISTINCT IdCliente
        FROM
            transacoes
        WHERE
            DATE(DtCriacao) = '2025-08-25'
    ),
    tb_clienteUltimoDia AS (
    SELECT 
        * 
    FROM 
        transacoes
    WHERE
            DATE(DtCriacao) = '2025-08-29'
    )

SELECT 
    * 
FROM tb_clientePrimeiroDia AS t1
    LEFT JOIN tb_clienteUltimoDia AS t2
    ON t1.IdCliente = t2.IdCliente

    --2825