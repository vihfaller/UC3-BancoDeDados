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

insert into pedido(id_pedido, fk_cliente, fk_produto, qnte)
values (1,7,6,4),
(2,4,8,9),
(3,1,2,3),
(4,8,9,3),
(5,4,8,6),
(6,1,5,9),
(7,4,3,6),
(8,7,6,4)

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


-- /////////////////////////////////////////////////////////////


-- DQL exercicioooos


-- exibi toda a quantidade da tabela selecionada
select count (*) from cliente

-- altera o nome e sobrenome dos clientes sem 
select count (*) as nome_cliente, sobrenome_cliente from cliente

-- altera o nome na hora de imprimir, mas noa altera o nome do atributo no banco de dados
select nome_cliente as nome, sobrenome_cliente as sobrenome from cliente

-- imprimi todas as clientes do sexo feminino
select count (*) from cliente where genero_cliente = 'Feminino'

-- imprimi quantos clientes possuem um salario maior q mil
select  count (*) from cliente where salario_usuario > '1000'

--conta o numero de produtos na tabela de produto
select count (*) from produto

--conta o numero de pedido feito pelo cleinte 2
select count (*) from pedido where fk_cliente = 2

-- contar o numero de pedido feito do produto 1
select count (*) as pedido_1 from pedido where fk_produto = 1

-- contar o numero de cliente que fizeram pelo menos 1 pedido
select count (distinct fk_cliente) from pedido	

-- ////////////////////////////////////////////////////

-- AVG (average) 

--imprimira a media salarial do cliente da tabela genero igual a masculino. (as alterei apenas o nome da impressao para media salarial)
select avg (salario_usuario) as media_salarial from cliente where genero_cliente = 'Feminino'

select avg (preco) as preço_medio from produto

select avg (fk_produto) from pedido 

select avg (num_pedido) from (select id_cliente, count (*) as num pedido from pedido group by id_cliente) as qnte_cliente

select avg (salario_usuario) as media_salarial from cliente

-- ////////////////////////////////////////////////////


-- SUM 

--somatoria de todo os salarios dos clientes
select sum (salario_usuario) as salario_total from cliente 

select sum (salario_usuario/3) as salario_total from cliente 

-- criar a média salarial da relaçao usuario para o genero masculino e feminino
select genero_cliente, avg (salario_usuario) as salario from cliente group by genero_cliente

-- exibir a quantidade de usuarios do sexo masculino e a quantidade de usuarios do sexo feminino
select genero_cliente, count (genero_cliente) from cliente group by genero_cliente

-- crie uma expressao que somara de todos os preços da relaçao produto com 10% de desconto
select sum (preco*0.9) from produto