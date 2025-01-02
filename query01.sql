/*
1 - Relatório de Atores Populares
"Quero saber quais são os atores que aparecem mais vezes no nosso catálogo de filmes. 
Mostre os nomes dos atores e a contagem de filmes em que cada um aparece, 
ordenados do mais frequente para o menos frequente. 
Inclua apenas atores que aparecem em mais de 20 filmes."
*/

SELECT 
    actor.actor_id AS id_ator,
    actor.first_name AS nome,
    actor.last_name AS sobrenome,
    COUNT(film_actor.actor_id) AS total_filmes
FROM sakila.actor
INNER JOIN sakila.film_actor
ON film_actor.actor_id = actor.actor_id
GROUP BY actor.actor_id, actor.first_name, actor.last_name
HAVING COUNT(film_actor.actor_id) > 20
ORDER BY total_filmes DESC;