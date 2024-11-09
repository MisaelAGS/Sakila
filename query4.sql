/* "Quero entender melhor nossa receita por categoria de filme. 
Para cada categoria, mostre o total de pagamentos que recebemos por locação de 
filmes dessa categoria." */

SELECT 
    category.name AS categoria,
    SUM(payment.amount) AS soma 
FROM sakila.payment
INNER JOIN sakila.rental ON payment.rental_id = rental.rental_id
INNER JOIN sakila.inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN sakila.film_category ON inventory.film_id = film_category.film_id
INNER JOIN sakila.category ON film_category.category_id = category.category_id
GROUP BY category.name;