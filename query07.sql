/*
7 - Tempo Médio de Devolução por Cliente
"Para entender o comportamento dos nossos clientes, eu gostaria de saber o tempo médio que cada cliente leva para devolver os filmes alugados. 
Mostre o nome do cliente, o tempo médio de devolução em dias e a quantidade de locações realizadas por cada cliente. 
Inclua apenas clientes que alugaram mais de 10 vezes."
*/

SELECT
    c.first_name AS nome,
    c.last_name AS sobrenome,
    ROUND(AVG(DATEDIFF(r.return_date, r.rental_date)), 2) AS tempo_medio_devolucao,
    COUNT(r.rental_id) AS quantidade_locacoes
FROM sakila.customer AS c 
INNER JOIN sakila.rental AS r
ON c.customer_id = r.customer_id
WHERE r.return_date IS NOT NULL
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING quantidade_locacoes > 10
ORDER BY quantidade_locacoes DESC;