/* "Estou preocupado com atrasos nas devoluções. Crie uma consulta que mostre o total de 
dias de atraso acumulados por cliente, considerando que o prazo para devolução é de 3 dias. 
Liste os clientes que mais atrasam no topo." */

USE sakila;
SELECT 
    customer.first_name,
    customer.last_name,
    SUM(GREATEST(DATEDIFF(rental.return_date, rental.rental_date) - 3, 0)) AS acumulo_dias_de_atraso  
FROM sakila.rental
INNER JOIN sakila.customer ON rental.customer_id = customer.customer_id
WHERE rental.return_date IS NOT NULL
GROUP BY customer.customer_id
ORDER BY SUM(DATEDIFF(rental.return_date, rental.rental_date)) DESC;