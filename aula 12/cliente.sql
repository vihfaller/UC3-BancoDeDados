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
)

create table pedido (
id_pedido serial primary key,
fk_cliente int not null references cliente(id_cliente),
fk_produto int not null,
qnte smallint not null,
foreign key (fk_produto) references produto (id_produto)
)
