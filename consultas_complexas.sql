--PRODUTOS ACIMA DE 10 REAIS

-- SELECT nome, preco FROM Produtos
-- WHERE preco > 10
-- ORDER BY preco DESC;

-- PRODUTOS COM TOTAL MAIOR QUE 30 REIAS

-- SELECT p.id_pedido, c.nome AS cliente, SUM(ip.quantidade * ip.preco_unitario) AS total
-- FROM Pedidos p
-- JOIN Clientes c ON p.id_cliente = c.id_cliente
-- JOIN Itens_Pedido ip ON p.id_pedido = ip.id_pedido
-- GROUP BY p.id_pedido, c.nome
-- HAVING total > 30;

--Relatório de estoque por categoria

-- SELECT cat.nome AS categoria, SUM(prod.estoque) AS total_estoque
-- FROM Produtos prod
-- JOIN Categorias cat ON prod.id_categoria = cat.id_categoria
-- GROUP BY cat.nome
-- ORDER BY total_estoque DESC;

--Clientes que fizeram pedidos em 2025

-- SELECT DISTINCT c.nome
-- FROM Clientes c
-- JOIN Pedidos p ON c.id_cliente = p.id_cliente
-- WHERE YEAR(p.data_pedido) = 2025;

--Detalhes dos pedidos múltiploS JOIN 

-- SELECT p.id_pedido, c.nome AS cliente, pr.nome AS produto, ip.quantidade, ip.preco_unitario
-- FROM Pedidos p
-- JOIN Clientes c ON p.id_cliente = c.id_cliente
-- JOIN Itens_Pedido ip ON p.id_pedido = ip.id_pedido
-- JOIN Produtos pr ON ip.id_produto = pr.id_produto
-- ORDER BY p.id_pedido;

