/*
11 - Receita Total por Ano e Categoria
"Gostaria de ver a receita anual para cada categoria de filme, para entender as tendências de popularidade ao longo do tempo. 
Traga uma tabela com o ano, a categoria, o total de receita, e a quantidade de filmes alugados. 
Ordene por ano e pela maior receita dentro de cada ano."
*/

SELECT
    YEAR(r.rental_date) AS ano,
    c.name AS nome,
    COUNT(r.rental_id) AS quantidade_films_alugados,
    ROUND(SUM(p.amount), 2) AS total_receita
FROM sakila.category AS c
INNER JOIN sakila.film_category AS fc
ON c.category_id = fc.category_id
INNER JOIN sakila.inventory AS i
ON i.film_id = fc.film_id
INNER JOIN sakila.rental AS r
ON r.inventory_id = i.inventory_id
INNER JOIN sakila.payment AS p
ON r.rental_id = p.rental_id
GROUP BY ano, nome
ORDER BY ano, total_receita DESC;