# 📦 Banco de Dados - Sistema de Vendas

Projeto iniciante de modelagem e criação de um banco de dados relacional desenvolvido no **Beekeeper Studio**, utilizando **PostgreSQL**.

## 🧠 Estrutura
- Modelagem conceitual e lógica (diagramas entidade-relacionamento)
- Criação das tabelas com chaves primárias e estrangeiras
- Inserção de dados simulados
- Consultas SQL para análise de vendas por produto, cliente e estado

## 🛠️ Tecnologias
- SQL  
- Beekeeper Studio  
- PostgreSQL

## 📊 Exemplos de Consultas
```sql
SELECT 
    c.estado,
    SUM(v.quantidade * p.preco) AS total_estado
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN produtos p ON v.id_produto = p.id_produto
GROUP BY c.estado
ORDER BY total_estado DESC;
