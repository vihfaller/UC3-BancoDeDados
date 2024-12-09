select*from cliente
select*from pedido
select*from produto

-- seleciona nome_cliente(cliente) e qnte (pedido), da tabela cliente e pedido. onde cliente.id_cliente e pedido.fk_cliente e sua quantidade maior que 4
select nome_cliente, qnte 
from cliente, pedido
where cliente.id_cliente = pedido.fk_cliente and qnte > 2

-- selecione o nome dos usuarios e o numero do pedido de cada pedido
select  id_pedido,nome_cliente
from cliente, pedido
where cliente.id_cliente = pedido.fk_cliente

-- selecione o nome dos produtos e a quantidade nos pedidos
select nome_produto,qnte
from produto, pedido
where produto.nome_produto = pedido.fk_produto --

-- selecione o nome dos usuarios, numero do pedido onde a quantidade de produto comprada for maior que 2
select id_cliente, id_pedido, qnte
from cliente, pedido 
where cliente.id_cliente = pedido.fk_cliente and qnte >2

--selecione o nome dos usuarios, quantidade dos pedidos, nome dos produtos e faça a soma do valor do produtos comprados
select nome_cliente, qnte, nome_produto 
from cliente, pedido, produto
where cliente.nome_cliente = pedido.qnte

select sum (preco) from produto

