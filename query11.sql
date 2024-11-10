/* "Gostaria de ver a receita anual para cada categoria de filme, para entender as tendências de popularidade ao longo do tempo. 
Traga uma tabela com o ano, a categoria e o total de receita." */

USE sakila;
SELECT  
    SUM(payment.amount),
    category.name,
    YEAR(payment.payment_date)
FROM payment
INNER JOIN sakila.rental ON payment.rental_id = rental.rental_id
INNER JOIN sakila.inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN sakila.film_category ON inventory.film_id = film_category.film_id
INNER JOIN sakila.category ON film_category.category_id = category.category_id
GROUP BY category.name, YEAR(payment.payment_date);