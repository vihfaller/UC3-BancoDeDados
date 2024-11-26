CREATE TABLE Item (
    Nome VARCHAR(10),
    id_item int PRIMARY KEY,
    Efeito VARCHAR(15),
    Raridade NUMERIC (100),
    Tipo VARCHAR(10),
	quantidade numeric(30)
);

CREATE TABLE Local (
    Nome VARCHAR(10),
    ID_Local INTEGER PRIMARY KEY,
    Descricao VARCHAR(20),
    Tipo VARCHAR(10)
);

CREATE TABLE Personagem (
    ID_Personagem INTEGER PRIMARY KEY,
    Nome VARCHAR(10)
);

CREATE TABLE Goron (
    Habilidade VARCHAR(15),
	fk_personagem INTEGER,
	foreign key(fk_personagem) references personagem(id_personagem)
);

CREATE TABLE Hyllian (
    Habilidade VARCHAR(15),
	fk_personagem int references personagem(id_personagem)
);

CREATE TABLE Relacao (
    fk_personagem int references personagem(id_personagem)
);

CREATE TABLE Associado (
 fk_local int references local(id_local),
 fk_personagem int references personagem(id_personagem)
);
