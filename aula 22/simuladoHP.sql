CREATE TABLE Casa (
    ID_Casa INTEGER PRIMARY KEY,
    nome_casa VARCHAR,
    descricao_casa VARCHAR
);

CREATE TABLE Personagem (
    ID_Personagem INTEGER PRIMARY KEY,
    nome_personagem VARCHAR,
    casa_personagem VARCHAR,
    carac_personagem VARCHAR,
    hierarq_personagem VARCHAR
);

CREATE TABLE Materia (
    ID_Materia INTEGER PRIMARY KEY,
    nome_materia VARCHAR,
    nome_professor VARCHAR
);

CREATE TABLE Professor (
    ID_professor INTEGER PRIMARY KEY,
    nome_professor VARCHAR
);

CREATE TABLE Feitico (
    ID_feitico INTEGER PRIMARY KEY,
    descric_feitico VARCHAR
);

CREATE TABLE aluno (
    ID_aluno INTEGER PRIMARY KEY,
    nome_aluno VARCHAR
);

CREATE TABLE Aula_tem_Materia_aluno_Professor (
    ID_aula INTEGER PRIMARY KEY,
    local_aula VARCHAR,
    fk_Materia_ID_Materia INTEGER,
    fk_aluno_ID_aluno INTEGER,
    fk_Professor_ID_professor INTEGER
);

CREATE TABLE tem (
    fk_Personagem_ID_Personagem INTEGER,
    fk_Casa_ID_Casa INTEGER
);

CREATE TABLE possui_Professor_Feitico_aluno (
    fk_Professor_ID_professor INTEGER,
    fk_Feitico_ID_feitico INTEGER,
    fk_aluno_ID_aluno INTEGER
);

CREATE TABLE tem (
    fk_Personagem_ID_Personagem INTEGER,
    fk_Feitico_ID_feitico INTEGER
);
 
ALTER TABLE Aula_tem_Materia_aluno_Professor ADD CONSTRAINT FK_Aula_tem_Materia_aluno_Professor_2
    FOREIGN KEY (fk_Materia_ID_Materia)
    REFERENCES Materia (ID_Materia);
 
ALTER TABLE Aula_tem_Materia_aluno_Professor ADD CONSTRAINT FK_Aula_tem_Materia_aluno_Professor_3
    FOREIGN KEY (fk_aluno_ID_aluno)
    REFERENCES aluno (ID_aluno);
 
ALTER TABLE Aula_tem_Materia_aluno_Professor ADD CONSTRAINT FK_Aula_tem_Materia_aluno_Professor_4
    FOREIGN KEY (fk_Professor_ID_professor)
    REFERENCES Professor (ID_professor);
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_1
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_2
    FOREIGN KEY (fk_Casa_ID_Casa)
    REFERENCES Casa (ID_Casa)
    ON DELETE RESTRICT;
 
ALTER TABLE possui_Professor_Feitico_aluno ADD CONSTRAINT FK_possui_Professor_Feitico_aluno_1
    FOREIGN KEY (fk_Professor_ID_professor)
    REFERENCES Professor (ID_professor)
    ON DELETE NO ACTION;
 
ALTER TABLE possui_Professor_Feitico_aluno ADD CONSTRAINT FK_possui_Professor_Feitico_aluno_2
    FOREIGN KEY (fk_Feitico_ID_feitico)
    REFERENCES Feitico (ID_feitico)
    ON DELETE NO ACTION;
 
ALTER TABLE possui_Professor_Feitico_aluno ADD CONSTRAINT FK_possui_Professor_Feitico_aluno_3
    FOREIGN KEY (fk_aluno_ID_aluno)
    REFERENCES aluno (ID_aluno)
    ON DELETE NO ACTION;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_1
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_2
    FOREIGN KEY (fk_Feitico_ID_feitico)
    REFERENCES Feitico (ID_feitico)
    ON DELETE RESTRICT;
    

insert to casa(ID_Casa, nome_casa, descricao_casa)
values 
(1, 'Grifinória', 'Os estudantes desta casa são corajosos, ousados, leais e cavaleiros. As cores da Grifinória são o escarlate e o dourado.'),
(2, 'Sonserina', 'Os estudantes desta casa são astutos, ambiciosos e determinados. A Sonserina é considerada a casa mais sombria de Hogwarts.'),
(3, 'Corvinal', 'Os estudantes desta casa são inteligentes, criativos, saudáveis ​​e valorizam o aprendizado. As cores da Corvinal são o azul e o bronze.'),
(4, 'Lufa-Lufa', 'Os estudantes desta casa são leais, justos, pacientes, honestos e modestos.')

insert to personagem(ID_Personagem, nome_personagem, ID_Casa, carac_personagem, hierarq_personagem)
values 
(1, 'Harry Potter', 1, 'Corajoso, leal e impulsivo; tem uma forte conexão com Voldemort e é "O Menino Que Sobreviveu', 'aluno'),
(2, 'Herminione Granger', 1,' Inteligente, estudiosa e determinada; melhor aluna da sua geração e extremamente leal aos amigos.', 'aluno'),
(3, 'Ron Weasley', 1, 'Engraçado, leal e inseguro às vezes; vem de uma grande família bruxa e é o melhor amigo de Harry.', 'aluno'),
(4, 'Draco Malfoy', 2,'Arrogante, ambicioso e inseguro; criado em uma família de sangue-puro e inicialmente rival de Harry.','aluno'),
(5, 'Luna Lovegood',3, 'Excêntrica, gentil e perspicaz; acredita em criaturas mágicas improváveis e tem um grande coração.', 'aluno'),
(6,'Neville Longbottom', 1, 'Tímido, atrapalhado, mas corajoso; cresce ao longo da história e se torna um grande líder na luta contra Voldemort.', 'aluno'),
(7, 'Alvo Dumbledore', 1, 'Sábio, poderoso e misterioso; tem um passado complexo e acredita no poder do amor.', 'professor'),
(8, 'Minerva McGonagall,',1, 'Rigorosa, justa e habilidosa; é uma excelente duelista e ama Hogwarts profundamente.', 'professora'),
(9, 'Severo Snape', 2, 'Sarcástico, frio e corajoso; sua lealdade secreta a Dumbledore e seu amor por Lílian Potter são fundamentais para a história.', 'professor'),
(10, 'Filius Flitwick', 3, 'Pequeno, alegre e extremamente talentoso em feitiços; foi campeão de duelos na juventude.', 'professor'),
(11, 'Pomona Sprout', 4, 'Gentil, apaixonada por plantas e experiente em Herbologia; sempre ajuda os alunos com um sorriso.', 'professor'),
(12, 'Rúbeo Hagrid', 1, 'Gigante de bom coração, ingênuo e amoroso; tem um carinho especial por criaturas mágicas, especialmente as mais perigosas.', 'professor')

insert to materia(ID_Materia, nome_materia, nome_professor)
values 