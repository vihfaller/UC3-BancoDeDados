create or replace view produtos_comprados as
select ID_pedido as pedido, nome_cliente as cliente,
nome_produto as produto, qnte as quantidade, 
qnte*preco as fatura
from pedido 
join produto 
on fk_produto = id_produto
join cliente 
on fk_cliente = ID_cliente

select * from produtos_comprados


create or replace view produtos_comprados2 as
select ID_pedido as pedido, nome_cliente as cliente,
nome_produto as produto, qnte as quantidade, 
qnte*preco as fatura
from pedido 
left join produto 
on fk_produto = id_produto
join cliente 
on fk_cliente = ID_cliente

select * from produtos_comprados

-- ////////////////////////////////////////////////////////////

create or replace view pedidos_feito as 
select ID_pedido as pedido, nome_cliente as cliente,
from pedido 
right join cliente
on id_pedido = nome_cliente


select*from  produtos_comprados

create index on cliente(id_cliente)
create index on produto using hash(id_produto)
create index on pedido(id_pedido)
create index on pedido using hash(id_pedido)