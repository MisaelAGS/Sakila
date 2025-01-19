/*
12 - Clientes com Menos de Três Aluguéis no Último Ano
"Precisamos identificar os clientes que não são tão frequentes. 
Liste os clientes que fizeram menos de três aluguéis no último ano, incluindo o nome, a quantidade de aluguéis e o total gasto em locações."
*/

SELECT
    c.first_name AS nome,
    c.last_name AS sobrenome,
    COUNT(r.rental_id) AS quantidade_locacoes,
    SUM(p.amount) AS receita_total
FROM sakila.customer AS c
INNER JOIN sakila.rental AS r
ON c.customer_id = r.customer_id
INNER JOIN sakila.payment AS p
ON r.rental_id = p.rental_id
WHERE YEAR(r.rental_date) = (SELECT MAX(YEAR(rental.rental_date)) FROM sakila.rental)
GROUP BY c.customer_id, nome, sobrenome
HAVING quantidade_locacoes < 3
ORDER BY quantidade_locacoes DESC;