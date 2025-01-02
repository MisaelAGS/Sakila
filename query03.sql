/*
3 - Clientes Mais Frequentes
"Quem são nossos clientes mais ativos? Traga uma lista com os nomes dos clientes, a 
quantidade de locações que cada um fez e o total gasto em locações. Exiba somente 
clientes que alugaram mais de 30 vezes, ordenados pela quantidade de locações em ordem 
decrescente."
*/

SELECT 
    c.first_name AS nome,
    c.last_name AS sobrenome,
    COUNT(r.customer_id) AS qtd_locacao,
    SUM(p.amount) AS total_gasto
FROM sakila.customer AS c
INNER JOIN sakila.rental AS r
ON c.customer_id = r.customer_id
INNER JOIN sakila.payment AS p
ON r.rental_id = p.rental_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(r.customer_id)
ORDER BY qtd_locacao DESC;