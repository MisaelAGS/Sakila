/*
4 - Receita por Categoria de Filme
"Quero entender melhor nossa receita por categoria de filme. 
Para cada categoria, mostre o total de pagamentos que recebemos por locação de 
filmes dessa categoria, a quantidade de filmes alugados e a receita média por filme. 
Ordene da maior para a menor receita total."
*/

SELECT
    c.name AS nome_categoria,
    SUM(p.amount) AS total_receita, 
    COUNT(r.rental_id) AS qtd_locacoes,
    AVG(p.amount) AS receita_media_por_locacao
FROM sakila.category AS c
INNER JOIN sakila.film_category AS fc
ON c.category_id = fc.category_id
INNER JOIN sakila.film AS f
ON fc.film_id = f.film_id
INNER JOIN sakila.inventory AS i
ON i.film_id = f.film_id
INNER JOIN sakila.rental AS r
ON r.inventory_id = i.inventory_id
INNER JOIN sakila.payment AS p
ON p.rental_id = r.rental_id
GROUP BY c.name
ORDER BY total_receita DESC;