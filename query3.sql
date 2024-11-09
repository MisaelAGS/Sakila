/* "Quem são nossos clientes mais ativos? Traga uma lista com os nomes dos clientes
e a quantidade de locações que cada um fez, em ordem decrescente de locações." */

SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    COUNT(rental.rental_id) AS qtd_locacoes
FROM sakila.customer
INNER JOIN sakila.rental
ON customer.customer_id = rental.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT(rental.rental_id) DESC;

