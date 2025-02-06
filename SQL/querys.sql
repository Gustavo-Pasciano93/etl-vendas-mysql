SELECT * FROM vendas.tabela_produtos;

-- Total de vendas por produto
SELECT produto, SUM(quantidade * valor_unitario) AS total_vendas
FROM vendas.tabela_produtos
GROUP BY produto
ORDER BY total_vendas DESC;

-- Total de Vendas por região
SELECT regiao, SUM(quantidade * valor_unitario) AS total_vendas
FROM vendas.tabela_produtos
GROUP BY regiao
ORDER BY total_vendas DESC;

-- Produto mais vendido
SELECT produto, SUM(quantidade) AS total_quantidade
FROM vendas.tabela_produtos
GROUP BY produto
ORDER BY total_quantidade DESC
LIMIT 1;

-- Média de Valor unitário por produto
SELECT produto, AVG(valor_unitario) AS media_valor
FROM vendas.tabela_produtos
GROUP BY produto;

-- Vendas por mês
SELECT DATE_FORMAT(data, '%Y-%m') AS mes, SUM(quantidade * valor_unitario) AS total_vendas
FROM vendas.tabela_produtos
GROUP BY mes
ORDER BY mes;

-- Top 5 produtos com maior receita
SELECT produto, SUM(quantidade * valor_unitario) AS receita_total
FROM vendas.tabela_produtos
GROUP BY produto
ORDER BY receita_total DESC
LIMIT 5;

-- Região com o maior número de vendas
SELECT regiao, COUNT(*) AS total_vendas
FROM vendas.tabela_produtos
GROUP BY regiao
ORDER BY total_vendas DESC
LIMIT 1;
