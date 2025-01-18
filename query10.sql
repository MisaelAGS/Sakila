/*
10 - Análise Geográfica de Clientes
"Quero saber de onde nossos clientes vêm. 
Traga a quantidade de clientes por país e por cidade, o total de locações feitas e a receita total gerada por cada cidade. 
Ordene por país e cidade, mostrando as cidades com maior receita primeiro."
*/

SELECT 
    co.country AS pais,
    ci.city AS cidade,
    COUNT(DISTINCT(r.customer_id)) AS quantidade_clientes,
    COUNT(r.rental_id) AS quantidade_locacoes,
    ROUND(SUM(p.amount), 2) AS receita_total
FROM sakila.customer AS cu
INNER JOIN sakila.address AS ad
ON cu.address_id = ad.address_id
INNER JOIN sakila.city AS ci
ON ci.city_id = ad.city_id
INNER JOIN sakila.country AS co
ON co.country_id = ci.country_id
INNER JOIN sakila.rental AS r
ON r.customer_id = cu.customer_id
INNER JOIN sakila.payment AS p
ON p.rental_id = r.rental_id
GROUP BY pais, cidade
ORDER BY pais, receita_total desc;