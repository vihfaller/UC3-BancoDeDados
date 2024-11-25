/* Lógico_2: */

CREATE TABLE Usuario (
    ID_Usuario INTEGER PRIMARY KEY,
    fk_Assinatura INTEGER,
    Nome VARCHAR,
    Endereco VARCHAR,
    Assinatura VARCHAR,
    Plano VARCHAR
);

CREATE TABLE Conteudo (
    ID_Conteudo INTEGER PRIMARY KEY,
    FK_Artista INTEGER,
    Campo INTEGER,
    Tipo VARCHAR
);

CREATE TABLE Playlist (
    ID_Playlist INTEGER PRIMARY KEY,
    fk_User INTEGER,
    Quant_Musica INTEGER,
    Baixada BOOLEAN,
    Duracao_Total INTEGER
);

CREATE TABLE Artista (
    ID_Artista INTEGER PRIMARY KEY,
    Estilo VARCHAR,
    Selo BOOLEAN,
    Nome VARCHAR,
    Album VARCHAR
);

CREATE TABLE Musica_tem (
    ID_Musica INTEGER PRIMARY KEY,
    fk_Playlist_ID_Playlist INTEGER,
    fk_Artista_ID_Artista INTEGER,
    Gravadora VARCHAR
);

CREATE TABLE Assinatura (
    ID_Cartao INTEGER PRIMARY KEY,
    Bandeira VARCHAR,
    Dados_Cartao VARCHAR,
    Valor INTEGER,
    Duracao VARCHAR
);

CREATE TABLE Podcast (
    ID_Podcast INTEGER PRIMARY KEY,
    Participante VARCHAR,
    Tema VARCHAR
);

CREATE TABLE Episodio_possui (
    ID_Episodio INTEGER PRIMARY KEY,
    fk_Usuario INTEGER,
    Titulo VARCHAR,
    Descricao VARCHAR,
    fk_Pdocast INTEGER
);

CREATE TABLE Curtida (
    ID_Curtido INTEGER PRIMARY KEY,
    Inf_User INTEGER,
    Campo INTEGER
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_Assinatura)
    REFERENCES Assinatura (ID_Cartao)
    ON DELETE RESTRICT;
 
ALTER TABLE Conteudo ADD CONSTRAINT FK_Conteudo_1
    FOREIGN KEY (Campo)
    REFERENCES Playlist (ID_Playlist);
 
ALTER TABLE Conteudo ADD CONSTRAINT FK_Conteudo_3
    FOREIGN KEY (FK_Artista)
    REFERENCES Artista (ID_Artista);
 
ALTER TABLE Playlist ADD CONSTRAINT FK_Playlist_2
    FOREIGN KEY (fk_User)
    REFERENCES Usuario (ID_Usuario);
 
ALTER TABLE Musica_tem ADD CONSTRAINT FK_Musica_tem_2
    FOREIGN KEY (fk_Playlist_ID_Playlist)
    REFERENCES Playlist (ID_Playlist);
 
ALTER TABLE Musica_tem ADD CONSTRAINT FK_Musica_tem_3
    FOREIGN KEY (fk_Artista_ID_Artista)
    REFERENCES Artista (ID_Artista);
 
ALTER TABLE Podcast ADD CONSTRAINT FK_Podcast_2
    FOREIGN KEY (Info_Episodio???)
    REFERENCES ??? (???);
 
ALTER TABLE Episodio_possui ADD CONSTRAINT FK_Episodio_possui_1
    FOREIGN KEY (fk_Usuario)
    REFERENCES Usuario (ID_Usuario);
 
ALTER TABLE Episodio_possui ADD CONSTRAINT FK_Episodio_possui_2
    FOREIGN KEY (fk_Pdocast)
    REFERENCES Podcast (ID_Podcast);
 
ALTER TABLE Curtida ADD CONSTRAINT FK_Curtida_2
    FOREIGN KEY (Inf_User)
    REFERENCES Usuario (ID_Usuario);
 
ALTER TABLE Curtida ADD CONSTRAINT FK_Curtida_3
    FOREIGN KEY (Campo)
    REFERENCES Musica_tem (ID_Musica);