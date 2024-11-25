CREATE TABLE usuario (
    ID_User INTEGER PRIMARY KEY,
    Nickname VARCHAR,
    Senha INTEGER,
    Email VARCHAR,
    Endereco VARCHAR,
    Data_Nascimento INTEGER,
    fk_Assinatura_ID_Assinatura INTEGER
);

CREATE TABLE genero (
    Classsificacao_indicativa INTEGER,
    ID_Genero INTEGER PRIMARY KEY,
    Nome_genero VARCHAR
);

CREATE TABLE episodio (
    ID_Episodio INTEGER PRIMARY KEY,
    Elenco VARCHAR,
    Duracao_Episodio INTEGER,
    fk_Serie_fk_Conteudo_ID_Conteudo INTEGER
);

CREATE TABLE conteudo (
    Elenco VARCHAR,
    Roteiro VARCHAR,
    ID_Conteudo INTEGER PRIMARY KEY
);

CREATE TABLE filme (
    Estudio_produtora VARCHAR,
    Filme_Duracao VARCHAR,
    fk_Conteudo_ID_Conteudo INTEGER PRIMARY KEY
);

CREATE TABLE serie (
    Temporada INTEGER,
    fk_Conteudo_ID_Conteudo INTEGER PRIMARY KEY
);

CREATE TABLE documentario (
    Patrocinador VARCHAR,
    Document_duracao INTEGER,
    fk_Conteudo_ID_Conteudo INTEGER PRIMARY KEY
);

CREATE TABLE lista_de_desejo_assistira (
    fk_Usuario_ID_User INTEGER,
    fk_Conteudo_ID_Conteudo INTEGER
);

CREATE TABLE avaliacao_asssistiu (
    Comentario VARCHAR,
    Quantidade INTEGER,
    Favorito BOOLEAN,
    fk_Usuario_ID_User INTEGER,
    fk_Conteudo_ID_Conteudo INTEGER
);

CREATE TABLE assinatura (
    ID_Assinatura INTEGER PRIMARY KEY,
    Nome_assisnatura VARCHAR,
    Valor INTEGER,
    Duracao INTEGER
);

CREATE TABLE possui (
    fk_Conteudo_ID_Conteudo INTEGER,
    fk_Genero_ID_Genero INTEGER
);
 
ALTER TABLE usuario ADD CONSTRAINT fk_usuario_2
    FOREIGN KEY (fk_Assinatura_ID_Assinatura)
    REFERENCES Assinatura (ID_Assinatura)
    ON DELETE RESTRICT;
 
ALTER TABLE episodio ADD CONSTRAINT fk_episodio_2
    FOREIGN KEY (fk_Serie_fk_Conteudo_ID_Conteudo)
    REFERENCES Serie (fk_Conteudo_ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE filme ADD CONSTRAINT fk_filme_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE serie ADD CONSTRAINT fk_serie_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE documentario ADD CONSTRAINT fk_documentario_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE CASCADE;
 
ALTER TABLE lista_de_desejo_assistira ADD CONSTRAINT Ffk_lista_de_desejo_assistira_1
    FOREIGN KEY (fk_Usuario_ID_User)
    REFERENCES Usuario (ID_User);
 
ALTER TABLE lista_de_desejo_assistira ADD CONSTRAINT fk_lista_de_desejo_assistira_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo);
 
ALTER TABLE Avaliacao_asssistiu ADD CONSTRAINT FK_Avaliacao_asssistiu_1
    FOREIGN KEY (fk_Usuario_ID_User)
    REFERENCES Usuario (ID_User);
 
ALTER TABLE Avaliacao_asssistiu ADD CONSTRAINT FK_Avaliacao_asssistiu_2
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo);
 
ALTER TABLE possui ADD CONSTRAINT fk_possui_1
    FOREIGN KEY (fk_Conteudo_ID_Conteudo)
    REFERENCES Conteudo (ID_Conteudo)
    ON DELETE RESTRICT;
 
ALTER TABLE possui ADD CONSTRAINT fk_possui_2
    FOREIGN KEY (fk_Genero_ID_Genero)
    REFERENCES Genero (ID_Genero)
    ON DELETE RESTRICT;