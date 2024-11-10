/* "Quais categorias de filmes trazem a maior receita média por cliente? 
Para cada categoria, traga o valor médio pago por cliente e ordene da maior para a menor 
média." */

USE sakila;
SELECT 
    category.name, AVG(payment.amount) 
FROM sakila.payment
INNER JOIN sakila.rental ON payment.rental_id = rental.rental_id
INNER JOIN sakila.inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN sakila.film_category ON inventory.film_id = film_category.film_id
INNER JOIN sakila.category ON film_category.category_id = category.category_id
GROUP BY category.category_id
ORDER BY AVG(payment.amount) DESC;
