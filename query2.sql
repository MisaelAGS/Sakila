/* "Quais são os filmes disponíveis em cada categoria? 
Exiba o nome do filme e a categoria em que ele se enquadra. 
Separe por categoria e ordene por nome do filme." */

SELECT 
    film.title AS "Título do Filme", 
    category.name "Categoria"
FROM film_category
INNER JOIN film
ON film_category.film_id = film.film_id
INNER JOIN category
ON film_category.category_id = category.category_id
ORDER BY film.title;