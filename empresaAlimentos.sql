
CREATE DATABASE IF NOT EXISTS empresa_alimentos;
USE empresa_alimentos;

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE Funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(50)
);

CREATE TABLE Fornecedores (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    contato VARCHAR(100)
);

CREATE TABLE Categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT,
    id_categoria INT,
    id_fornecedor INT,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor)
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE,
    id_cliente INT,
    id_funcionario INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);

CREATE TABLE Itens_Pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);


INSERT INTO Clientes (nome, email, telefone) VALUES
('João Silva', 'joao@email.com', '1111-1111'),
('Maria Souza', 'maria@email.com', '2222-2222'),
('Carlos Lima', 'carlos@email.com', '3333-3333');


INSERT INTO Funcionarios (nome, cargo) VALUES
('Ana Paula', 'Atendente'),
('Ricardo Alves', 'Gerente'),
('Fernanda Dias', 'Caixa');


INSERT INTO Fornecedores (nome, contato) VALUES
('Alimentos LTDA', 'contato@alimentos.com'),
('Distribuidora São Jorge', 'vendas@saojorge.com'),
('Natural Food', 'contato@natural.com');


INSERT INTO Categorias (nome) VALUES
('Laticínios'),
('Congelados'),
('Bebidas');


INSERT INTO Produtos (nome, preco, estoque, id_categoria, id_fornecedor) VALUES
('Leite Integral', 4.50, 100, 1, 1),
('Pizza Congelada', 15.90, 50, 2, 2),
('Suco de Laranja', 7.00, 80, 3, 3);


INSERT INTO Pedidos (data_pedido, id_cliente, id_funcionario) VALUES
('2025-10-01', 1, 1),
('2025-10-01', 2, 2),
('2025-10-02', 3, 3);


INSERT INTO Itens_Pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 2, 4.50),
(1, 3, 1, 7.00),
(2, 2, 3, 15.90);

