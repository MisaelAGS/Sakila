/*
2 - Filmes Disponíveis por Categoria
"Quais são os filmes disponíveis em cada categoria? Exiba o nome do filme, a categoria e a 
duração do filme. Separe por categoria, ordene por nome do filme e exiba apenas filmes com 
duração acima de 90 minutos."
*/

SELECT 
    category.name AS nome_categoria,
    film.title AS filme,
    film.length AS duracao
FROM sakila.film
INNER JOIN sakila.film_category
ON film.film_id = film_category.film_id
INNER JOIN sakila.category
ON film_category.category_id = category.category_id
WHERE film.length > 90
ORDER BY nome_categoria, filme;