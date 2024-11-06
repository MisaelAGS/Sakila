# Repositório de Consultas - Banco de Dados Sakila

Este repositório contém uma série de consultas realizadas no banco de dados **Sakila**, um banco de dados de exemplo amplamente utilizado para aprendizagem e demonstrações no MySQL.

## Sobre o Banco de Dados Sakila

O banco de dados **Sakila** é um banco de dados de amostra que simula uma locadora de filmes. Ele contém tabelas relacionadas a filmes, atores, categorias, clientes, pagamentos, locações, entre outras, para que você possa praticar e aprender a trabalhar com **MySQL**.

As principais tabelas incluem:
- **actor**: Contém informações sobre os atores.
- **film**: Contém detalhes sobre os filmes.
- **category**: Categorias de filmes, como ação, comédia, drama, etc.
- **customer**: Detalhes sobre os clientes da locadora.
- **rental**: Registros das locações de filmes.
- **payment**: Informações sobre os pagamentos efetuados pelos clientes.
- **staff**: Funcionários que gerenciam a locadora.

## Proposta dos Exercícios

Este repositório tem como objetivo registrar uma série de consultas SQL realizadas no banco de dados Sakila, com o propósito de praticar e aperfeiçoar as minhas habilidades com MySQL. Para isso, solicitei ao ChatGPT que simulasse algumas solicitações de um gestor ao seu analista de dados. Abaixo estão listadas as demandas repassadas ao analista:

### Demandas

1. **Relatório de Atores Populares**
   - "Quero saber quais são os atores que aparecem mais vezes no nosso catálogo de filmes. Mostre os nomes dos atores e a contagem de filmes em que cada um aparece, ordenados do mais frequente para o menos frequente."

2. **Filmes Disponíveis por Categoria**
   - "Quais são os filmes disponíveis em cada categoria? Exiba o nome do filme e a categoria em que ele se enquadra. Separe por categoria e ordene por nome do filme."

3. **Clientes Mais Frequentes**
   - "Quem são nossos clientes mais ativos? Traga uma lista com os nomes dos clientes e a quantidade de locações que cada um fez, em ordem decrescente de locações."

4. **Receita por Categoria de Filme**
   - "Quero entender melhor nossa receita por categoria de filme. Para cada categoria, mostre o total de pagamentos que recebemos por locação de filmes dessa categoria."

5. **Receita Média por Mês**
   - "Quanto estamos ganhando, em média, por mês? Faça uma consulta que mostre a receita média por mês de locação, ao longo de todos os anos de dados que temos."

6. **Filmes de Maior Popularidade**
   - "Quais são os filmes mais alugados? Gere um relatório com os títulos dos filmes e a quantidade de vezes que foram alugados, ordenados do mais alugado para o menos alugado."

7. **Tempo Médio de Devolução por Cliente**
   - "Para entender o comportamento dos nossos clientes, eu gostaria de saber o tempo médio que cada cliente leva para devolver os filmes alugados. Mostre o nome do cliente e o tempo médio de devolução em dias."

8. **Análise de Atrasos por Cliente**
   - "Estou preocupado com atrasos nas devoluções. Crie uma consulta que mostre o total de dias de atraso acumulados por cliente, considerando que o prazo para devolução é de 3 dias. Liste os clientes que mais atrasam no topo."

9. **Categorias com Maior Receita por Cliente**
   - "Quais categorias de filmes trazem a maior receita média por cliente? Para cada categoria, traga o valor médio pago por cliente e ordene da maior para a menor média."

10. **Análise Geográfica de Clientes**
    - "Quero saber de onde nossos clientes vêm. Traga a quantidade de clientes por país e por cidade, ordenados por país e cidade."

11. **Receita Total por Ano e Categoria**
    - "Gostaria de ver a receita anual para cada categoria de filme, para entender as tendências de popularidade ao longo do tempo. Traga uma tabela com o ano, a categoria e o total de receita."

12. **Clientes com Menos de Três Aluguéis no Último Ano**
    - "Precisamos identificar os clientes que não são tão frequentes. Liste os clientes que fizeram menos de três aluguéis no último ano."

13. **Filmes que Não Foram Alugados no Último Ano**
    - "Quero saber quais filmes não geraram locações no último ano. Liste o título desses filmes, pois vamos considerar um plano de desconto ou remoção do catálogo."

14. **Pagamentos e Aluguéis Cancelados**
    - "Existe algum caso em que foi registrado um pagamento, mas o aluguel foi cancelado? Verifique se temos pagamentos sem registros de aluguel correspondentes."
