insert into cliente (id_cliente, nome_cliente, sobrenome_cliente)
values (1, 'Pedro', 'Silveira'),
(2, 'Isadora', 'Rodriges'),
(3, 'Vitoria', 'Faller'),
(4, 'Vitor', 'Reis'),
(5, 'Lucas', 'Nunes'),
(6, 'Talita', 'Nunes'),
(7, 'Isadora', 'Machado'),
(8,'Douglas', 'Silveira'),
(9, 'Pedro', 'Nunes'),
(10, 'Vitor', 'Silveira');

select*from cliente

insert into produto(id_produto, nome_produto, descricao, preco, qnte_estoque)
values 
(3,'Cubo magico','produto d eplástico',10.00, 20),
(4, 'stanley','garrafa térmica', 300.00, 50),
(5, 'Capinha de telefone','apenas para samsung', 25.00, 100),
(6, 'MousePad', 'tamanho médio',50.00, 10),
(7, 'Caneta', 'contém cores azul, verde e vermelho', 6.00, 70),
(8, 'Fone de ouvido', 'via bluetooth', 50.00, 30),
(9, 'Energético','Agite antes de beber', 12.00, 20),
(10, 'Esmalte','secagem rápida', 7.00, 50)

update produto set qnte = 43 where ide_produto = 2

select*from Produto

select*from pedido
insert into pedido(fk_cliente, fk_produto, qnte)
values (7,6,4),
(4,8,9),
(1,2,3),
(8,9,3),
(4,8,6),
(1,5,9),
(4,3,6),
(7,6,4)
