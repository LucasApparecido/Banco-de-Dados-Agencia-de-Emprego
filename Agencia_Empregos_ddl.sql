CREATE TABLE cidade (
    id INTEGER PRIMARY KEY,
    uf CHAR(8),
    nome VARCHAR(50)
);


CREATE TABLE trabalhador (
    cpf INTEGER PRIMARY KEY,
    data_nascimento DATE,
    nome VARCHAR(50),
    cidade_id INTEGER,
    FOREIGN KEY(cidade_id) REFERENCES cidade (id)
);

CREATE TABLE candidatura (
    trabalhador_cpf INTEGER,
    PRIMARY KEY (trabalhador_cpf)
)



