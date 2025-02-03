create table casa(
    id_casa int (80),
    nome_casa name (300),
    descricao_casa varchar (80),
    PRIMARY KEY int (id_casa),
    FOREIGN KEY (id_personagem) references personagem(id_personagem)
)

create table personagem(
    id_personagem int (80),
    nome_personagem name (80),
    casa_personagem varchar (80),
    caract_personagem varchar (80),
    hierarq_personagem varchar (80) ,
    PRIMARY KEY int (id_personagem)

)

create table materia(
    id_materia int (80),
    grade_materia varchar (500),
    nome_professor name (30),
    PRIMARY KEY int (id_materia),
    FOREIGN KEY (id_professor) references professor(id_professor)
    FOREIGN KEY (id_aluno)
)

create table professor(
    id_professor int (80)
    nome_professor varchar (80)
    PRIMARY KEY int (id_professor)
)

create table feitico(
    id_feitico int (80),
    descricao_feitico varchar (500)
)

create table aluno(
    id_aluno int (80),
    nome_aluno varchar (80),
    PRIMARY KEY int (id_aluno),
    FOREIGN KEY (id_feitico) references feitico(id_feitico)
)

create table aula(
    id_aula int (80),
    
)