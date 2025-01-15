/*
6 - Filmes de Maior Popularidade
"Quais são os filmes mais alugados? Gere um relatório com os títulos dos filmes, a 
quantidade de vezes que foram alugados e a média de dias de locação. 
Exiba somente filmes que foram alugados mais de 25 vezes, ordenados do mais alugado para o menos alugado."
*/

SELECT
    f.title AS nome_filme,
    COUNT(r.rental_id) AS quantidade_locacoes,
    ROUND(AVG(DATEDIFF(r.return_date, r.rental_date)), 2) AS media_dia_locacao
FROM sakila.film AS f
INNER JOIN sakila.inventory AS i
ON f.film_id = i.film_id
INNER JOIN sakila.rental AS r
ON i.inventory_id = r.inventory_id
WHERE r.return_date IS NOT NULL
GROUP BY f.film_id
HAVING quantidade_locacoes > 25
ORDER BY quantidade_locacoes DESC;