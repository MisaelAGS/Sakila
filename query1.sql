/* "Quero saber quais são os atores que aparecem mais vezes no nosso catálogo de filmes. 
Mostre os nomes dos atores e a contagem de filmes em que cada um aparece, 
ordenados do mais frequente para o menos frequente." */

SELECT 
    film_actor.actor_id, 
    actor.first_name,
    actor.last_name,
    COUNT(film_actor.actor_id) AS qtd_filmes 
FROM sakila.film_actor
INNER JOIN sakila.actor
ON actor.actor_id = film_actor.actor_id
GROUP BY actor_id
ORDER BY COUNT(film_actor.actor_id) DESC;