/*
8 - Análise de Atrasos por Cliente
"Estou preocupado com atrasos nas devoluções. 
Crie uma consulta que mostre o total de dias de atraso acumulados por cliente, considerando que o prazo para devolução é de 3 dias. 
Liste os clientes que mais atrasam no topo, incluindo o nome, o total de atrasos e a média de dias de atraso por locação."
*/

SELECT 
    c.first_name AS nome,
    c.last_name AS sobrenome,
    SUM(DATEDIFF(r.return_date, r.rental_date) - 3) AS quantidade_atrasos,
    ROUND(AVG(DATEDIFF(r.return_date, r.rental_date) - 3), 2) AS media_dia_atraso
FROM sakila.customer AS c
INNER JOIN sakila.rental AS r
ON c.customer_id = r.customer_id
WHERE r.return_date IS NOT NULL AND DATEDIFF(r.return_date, r.rental_date) > 3
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY quantidade_atrasos DESC;