-- DDL e DML ( delete/from/where, select distinct, alter table/add, update/set/where )
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

-- deleta na tabela pedido o id pedido 1 e id pedido 3
DELETE FROM pedido WHERE id_pedido = 1 and id_pedido = 3;

--pegar todos os nome sem repetir
SELECT DISTINCT nome_cliente from cliente

--pegar todos os sobrenome sem repetir
SELECT DISTINCT sobrenome_cliente from cliente

-- alterar tabela cliente adicionando genero cliente do tipo varchar com ate 10 caracteres
alter table cliente add genero_cliente varchar(10)

alter table cliente add salario_usuario integer

-- alterar tabela cliente adicionando genero cliente do tipo numerico de 1 a 11
alter table cliente add cpf_cliente numeric(11)

-- update na tabela cliente, mudando genero cliente para masculino, where= no atributo id cliente
update cliente
set genero_cliente = 'Masculino'
where id_cliente > 0

update cliente
set genero_cliente = 'Feminino'
where id_cliente = 7

update cliente
set salario_usuario = 5000
where id_cliente > 0

update cliente
set cpf_cliente = 10000000001
where id_cliente = 1

select*from cliente

--listar todos os nomes unicos da relaçao usuario
select distinct nome_cliente from Cliente

--listar o nome e cpf de todos os cliente
select nome_cliente, cpf_cliente from cliente

-- listar op nome e cpf dos cliente do sexo feminino
select nome_cliente, cpf_cliente from cliente where genero_cliente = 'Feminino'

--ordenar a listagem anterior por nome, de forma decrescente
select nome_cliente, cpf_cliente from cliente where genero_cliente = 'Feminino' order by nome_cliente desc


-- imprimi nome e salario da tabela cliente do genero masculino e com salario maior q tres mil
select nome_cliente, salario_usuario from cliente where genero_cliente = 'Masculino' and salario_usuario > 3000
