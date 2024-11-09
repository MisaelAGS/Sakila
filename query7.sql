/* "Para entender o comportamento dos nossos clientes, eu gostaria de saber o
tempo médio que cada cliente leva para devolver os filmes alugados. 
Mostre o nome do cliente e o tempo médio de devolução em dias." */

USE sakila;
SELECT 
    customer.first_name AS primeiro_nome,
    customer.last_name AS sobrenome,
    AVG(DATEDIFF(rental.return_date, rental.rental_date)) AS media_devolucao_em_dias 
FROM sakila.rental
INNER JOIN sakila.customer ON rental.customer_id = customer.customer_id
WHERE rental.return_date IS NOT NULL
GROUP BY customer.customer_id;