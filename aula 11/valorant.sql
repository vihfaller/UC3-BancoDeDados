CREATE TABLE jogo (
    ID_Jogo int PRIMARY KEY,
    Nome_Jogo varchar,
    Categoria varchar,
    Data_Lanc date
);

CREATE TABLE player (
    ID_Usuario INT PRIMARY KEY,
    Fk_Jogo int,
    Nome_Player varchar(8),
    Email varchar(15),
    Senha int,
    Data_Criac_Conta date,
    Dinheiro_Player money
);

CREATE TABLE time (
    ID_Time int PRIMARY KEY,
    FK_Player1 INTEGER,
    FK_Player2 INTEGER,
    FK_Player3 INTEGER,
    FK_Player4 INTEGER,
    FK_Player5 INTEGER
);

CREATE TABLE personagem (
    ID_Personagem int PRIMARY KEY,
    ID_Arma int,
    Campo int,
    Habilidade varchar,
    Dinheiro_Personagem int,
    Equipamento int,
    Nome varchar
);

CREATE TABLE arma (
    ID_Arma int PRIMARY KEY,
    ID_Personagem int,
    Dano int,
    Municao_Total int,
    Municao_Atual int
);

CREATE TABLE item (
    ID_Item int PRIMARY KEY,
    ID_Persona int,
    Tipo varchar,
    Quantidade int,
    Funcao int,
    Dano int
);

CREATE TABLE partida (
    ID_Partidade int PRIMARY KEY,
    Posicao_Ranking int,
    Pontuacao_Total int,
    FK_Mapa int
);

CREATE TABLE ranking (
    FK_Partida int,
    Posicao int,
    Pontuacao int
);

CREATE TABLE mapa (
    ID_Mapa int PRIMARY KEY,
    Descricao varchar
);

select*from mapa
select*from ranking
select*from partida
select*from item
select*from arma
select*from personagem
select*from time
select*from player
select*from jogo