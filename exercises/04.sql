SELECT
*
FROM
produtos
WHERE
DescCategoriaProduto LIKE '%churn%'
-- LIKE function is more expensive than OR or IN