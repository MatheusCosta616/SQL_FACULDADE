SET ECHO ON;

CREATE TABLE autor (
    cod_autor NUMBER(6) CONSTRAINT pk_autor PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sexo VARCHAR(1) CONSTRAINT ck_sexo 
                    CHECK (sexo IN ('F', 'M')) NOT NULL,
    obs VARCHAR(100)
);

CREATE TABLE livro (
    cod_livro NUMBER(7) CONSTRAINT pk_livro PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    isbn NUMBER(13) CONSTRAINT uk_livro UNIQUE,
    dt_edicao DATE NOT NULL,
    preco DECIMAL(6,2) CONSTRAINT d_preco
                       CHECK (preco >= 0)
    );
    
CREATE TABLE AUTORIA (
    COD_LIVRO NUMBER(7) CONSTRAINT fk_livro REFERENCES LIVRO(cod_livro),
    COD_AUTOR NUMBER(6) CONSTRAINT fk_autor REFERENCES AUTOR(cod_autor),
    CONSTRAINT pk_autoria PRIMARY KEY (COD_LIVRO, COD_AUTOR)
);

INSERT INTO autoria VALUES (1, 1);

ALTER TABLE autor
MODIFY obs VARCHAR(200);

ALTER TABLE livro
MODIFY isbn NUMBER(13) NOT NULL

ALTER TABLE livro
ADD resenha VARCHAR(500)

SELECT * FROM livro;
SELECT * FROM autor;
SELECT * FROM autoria;

