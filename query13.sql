/* "Quero saber quais filmes não geraram locações no último ano. 
Liste o título desses filmes, pois vamos considerar um plano de desconto ou remoção do catálogo." */

USE sakila;
SELECT 
    film.title, 
    COUNT(rental.rental_id) AS qtd_locacoes
FROM sakila.film
INNER JOIN sakila.inventory ON film.film_id = inventory.film_id 
INNER JOIN sakila.rental ON rental.inventory_id = inventory.inventory_id
WHERE YEAR(rental.rental_date) = (SELECT YEAR(MAX(rental.rental_date)) - 1 FROM sakila.rental)
GROUP BY film.film_id
HAVING COUNT(rental.rental_id) < 1;