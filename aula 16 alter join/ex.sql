select*from Produto

select*from pedido

select*from cliente

select*from categoria

create table cliente(
id_cliente int primary key,
nome_cliente varchar (80) not null,
sobrenome_cliente varchar(80) not null
)

create table produto(
id_produto int primary key,
nome_produto varchar(80) not null,
descricao text null,
preco numeric check (preco > 0) not null,
qnte_estoque smallint default 0
fk_categoria int not null
)

create table pedido (
id_pedido serial primary key,
fk_cliente int not null references cliente(id_cliente),
fk_produto int not null,
qnte smallint not null,
foreign key (fk_produto) references produto (id_produto)
)

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

insert into produto(id_produto, nome_produto, descricao, preco, qnte_estoque, id_categoria)
values 
(3,'Cubo magico','produto d eplástico',10.00, 20, 3),
(4, 'stanley','garrafa térmica', 300.00, 50, 1),
(5, 'Capinha de telefone','apenas para samsung', 25.00, 100, 3),
(6, 'MousePad', 'tamanho médio',50.00, 10, 2),
(7, 'Caneta', 'contém cores azul, verde e vermelho', 6.00, 70, 3),
(8, 'Fone de ouvido', 'via bluetooth', 50.00, 30, 2),
(9, 'Energético','Agite antes de beber', 12.00, 20, 1),
(10, 'Esmalte','secagem rápida', 7.00, 50, 3)

create table categoria(
id_categoria int PRIMARY KEY,
nome_categoria varchar (80) not null
)

insert into categoria(id_categoria, nome_categoria)
values
(1,'bebida'),
(2,'gamer'),
(3, 'objeto')

insert into pedido(fk_cliente, fk_produto, qnte)
values (7,6,4),
(4,8,9),
(1,2,3),
(8,9,3),
(4,8,6),
(1,5,9),
(4,3,6),
(7,6,4)

alter table produto add fk_categoria int

update produto
set fk_categoria = 1
where id_produto = 9 or id_produto = 2

update produto 
set fk_categoria = 2
where id_produto = 6 or id_produto = 8

update produto 
set fk_categoria = 3
where id_produto = 1 or id_produto=3 or id_produto=4 or id_produto=5 or id_produto=6 or id_produto=7 or id_produto=10

select produto.id_categoria.
from produto
join 