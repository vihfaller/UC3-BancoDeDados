CREATE TABLE personagens (
    id_personagem INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE cenarios (
    id_cenario INT PRIMARY KEY,
    nome_cenario VARCHAR(50)
);

CREATE TABLE itens (
    id_item INT PRIMARY KEY,
    nome_item VARCHAR(50),
    valor INT
);

CREATE TABLE coletados (
    id_personagem INT,
    id_item INT,
    id_cenario INT,
    PRIMARY KEY (id_personagem, id_item, id_cenario),
    FOREIGN KEY (id_personagem) REFERENCES personagens(id_personagem),
    FOREIGN KEY (id_item) REFERENCES itens(id_item),
    FOREIGN KEY (id_cenario) REFERENCES cenarios(id_cenario)
);

-- Inserindo dados nas tabelas
INSERT INTO personagens (id_personagem, nome) VALUES
(1, 'Aragorn'),
(2, 'Legolas'),
(3, 'Gimli'),
(4, 'Gandalf'),
(5,'Gollum'),
(6,'Saurom'),
(7,'Galadriel');

INSERT INTO cenarios (id_cenario, nome_cenario) VALUES
(1, 'Floresta de Lothlórien'),
(2, 'Montanhas de Moria'),
(3, 'Campo de Batalha de Helm'),
(4, 'A Comarca'),
(5, 'Rivendell');

INSERT INTO itens (id_item, nome_item, valor) VALUES
(1, 'Espada Elfica', 500),
(2, 'Arco Longo', 300),
(3, 'Machado de Batalha', 400),
(4, 'Varinha Mágica', 600),
(5,'O Um Anel',9000000),
(6, 'O Elmo de Galadriel',500000000);

INSERT INTO coletados (id_coletado,id_personagem, id_item, id_cenario) VALUES
(1,1, 1, 1),
(2,2, 2, 2),
(3,3, 3, 3),
(4, 4, 4, 1),
(5,1, 3, 3),
(6,2, 1, 1),
(7,6, 3, 1),
(8,5, 5,2),
(9,7,2,5);

--BUSCAS DE JUNÇÕES NA TERRA MÉDIA
select *from coletados

--encontrar os itens coletados por aragorn
select coletados.id_item , nome_item
from coletados, itens
where coletados.id_item = itens.id_item and id_personagem= 1

-- descobrir os cenarios que Legolas visitou
select coletados.id_cenario, nome_cenario
from coletados, cenarios
where coletados.id_cenario = cenarios.id_cenario and id_personagem = 2

-- verificar os itens coletados por gimli no campo de batalha de helm
select  coletados.id_item, itens.nome_item
from coletados, itens, cenarios
where coletados.id_item = itens.id_item and coletados.id_cenario = cenarios.id_cenario and cenarios.id_cenario = 3 and id_personagem = 3

-- INNER JOIN

-- encontrar os itens coletados por Aragorn
select coletados.id_item, nome_item
from coletados
join itens
on coletados.id_item = itens.id_item and id_personagem = 1

-- descobrir os cenarios que Legolas visitou
select coletados.id_cenario, nome_cenario
from coletados
join cenarios
on coletados.id_cenario = cenarios.id_cenario
where id_personagem = 2

-- verificar os itens coletados por gimli no campo de batalha de helm
select coletados.id_item, itens.nome_item
from coletados
join itens
on coletados.id_item = itens.id_item 
join cenarios
on coletados.id_cenario = cenarios.id_cenario
where id_personagem = 3 and cenarios.id_cenario = 3