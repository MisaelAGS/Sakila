/* "Quais são os filmes mais alugados? Gere um relatório com os títulos dos filmes e a quantidade de vezes que foram alugados, 
ordenados do mais alugado para o menos alugado." */

USE sakila;
SELECT 
    film.title AS filme, 
    COUNT(rental.rental_id) AS qtd_locacao 
FROM sakila.rental 
INNER JOIN sakila.inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN sakila.film ON inventory.film_id = film.film_id
GROUP BY film.title
ORDER BY COUNT(rental.rental_id) DESC;
