-- Total de faturamento

SELECT SUM(v.quantidade * p.preco) AS faturamento_total
FROM vendas v
JOIN produtos p ON v.id_produto = p.id_produto;

-- Quantidade total de produtos vendidos

SELECT SUM(quantidade) AS total_itens_vendidos
FROM vendas;

-- Produtos mais vendidos

SELECT 
    p.nome_produto,
    SUM(v.quantidade) as quantidade_vendida
FROM vendas v
JOIN produtos p ON v.id_produto = p.id_produto
GROUP BY p.nome_produto
ORDER BY quantidade_vendida desc
LIMIT 5;

-- Total de vendas por estado

SELECT 
    c.estado,
    SUM(v.quantidade * p.preco) AS total_estado
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN produtos p ON v.id_produto = p.id_produto
GROUP BY c.estado
ORDER BY total_estado DESC;

-- Vendas mais recentes - Produtos acima de 100

SELECT 
   c.nome_cliente,
   p.nome_produto,
   v.quantidade,
   v.data_venda
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN produtos p ON v.id_produto = p.id_produto
WHERE p.preco > 100
ORDER BY v.data_venda desc
LIMIT 10;








