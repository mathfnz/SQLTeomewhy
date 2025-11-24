SELECT
    ROUND(AVG(QtdePontos), 2) AS MediaPontos,
    MIN(QtdePontos) AS minCarteira,
    MAX(qtdePontos) AS maxCarteira,
    SUM(flTwitch) AS qtdTwichCadastrado,
    SUM(flEmail) AS qtdEmailCadastrado
FROM
    clientes