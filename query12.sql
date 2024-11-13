/* "Precisamos identificar os clientes que não são tão frequentes. 
Liste os clientes que fizeram menos de três aluguéis no último ano." */

USE sakila;
SELECT 
    customer.first_name,
    customer.last_name,
    COUNT(rental.rental_id) 
FROM sakila.customer
INNER JOIN sakila.rental ON rental.customer_id = customer.customer_id
WHERE YEAR(rental.rental_date) =  (SELECT YEAR(MAX(rental.rental_date)) - 1 FROM sakila.rental)
GROUP BY customer.customer_id
HAVING COUNT(rental.rental_id) < 3
ORDER BY COUNT(rental.rental_id);