SELECT
    IdTransacao,
    qtdePontos,
    CASE 
        WHEN qtdePontos < 10 THEN "baixo"
        WHEN qtdePontos < 500 then "medio"
        WHEN qtdePontos >= 500 then "alto"
    END AS PONTUACAO
FROM
    transacoes