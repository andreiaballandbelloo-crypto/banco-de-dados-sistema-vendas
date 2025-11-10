CREATE DATABASE loja_vendas;

CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY,
  nome_cliente VARCHAR(100),
  cidade VARCHAR(50),
  estado VARCHAR(2),
  telefone VARCHAR(20)
);

CREATE TABLE produtos (
  id_produto INT PRIMARY KEY,
  nome_produto VARCHAR(100),
  categoria VARCHAR(50),
  preco DECIMAL(10,2)
);

CREATE TABLE vendas (
  id_venda INT PRIMARY KEY,
  id_cliente INT,
  id_produto INT,
  data_venda DATE,
  quantidade INT,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);









