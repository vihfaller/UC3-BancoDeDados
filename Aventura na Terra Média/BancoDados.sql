create table Personagem(
id_personagem int primary key,
nome_personagem varchar (80),
raca varchar(15),
papel varchar (20)
)

create table Item(
id_item int primary key,
valor int not null
)

create table Cenario(
id_cenario int primary key,
nome varchar (80)
)

create table Coletado(
fk_personagem int not null references personagem(id_personagem)
fk_item int not null references item (id_item),
fk_item int not null cenario(id_cenario)
)