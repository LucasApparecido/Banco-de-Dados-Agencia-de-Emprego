-- DDL
CREATE TABLE cidade (
    id INTEGER NOT NULL,
    PRIMARY KEY (id),
    uf CHAR(2) NOT NULL,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE trabalhador (
    cpf VARCHAR(11) NOT NULL,
    PRIMARY KEY (cpf),
    data_nascimento DATE NOT NULL,
    nome VARCHAR(50) NOT NULL,
    cidade_id INTEGER NOT NULL,
    FOREIGN KEY(cidade_id) REFERENCES cidade (id)
);

CREATE TABLE solicitante (
    cnpj VARCHAR(14) NOT NULL,
    PRIMARY KEY (cnpj),
    nome VARCHAR(50) NOT NULL,
    razao_social VARCHAR(50) NOT NULL,
    cidade_id INTEGER NOT NULL,
    FOREIGN KEY(cidade_id) REFERENCES cidade (id)
);

CREATE TABLE vaga (
    id INTEGER NOT NULL,
    PRIMARY KEY (id),
    descricao VARCHAR(100) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    status BOOLEAN NOT NULL,
    salario FLOAT NOT NULL,
    solicitante_cnpj VARCHAR(14) NOT NULL,
    cidade_id INTEGER NOT NULL,
    FOREIGN KEY(solicitante_cnpj) REFERENCES solicitante (cnpj),
    FOREIGN KEY(cidade_id) REFERENCES cidade (id)
);

CREATE TABLE candidatura (
    trabalhador_cpf VARCHAR(11) NOT NULL,
    vaga_id INTEGER NOT NULL,
    PRIMARY KEY (trabalhador_cpf, vaga_id),
    resultado INTEGER,
    data_entrevista DATE,
    descricao_resultado VARCHAR(250),
    FOREIGN KEY(trabalhador_cpf) REFERENCES trabalhador (cpf),
    FOREIGN KEY(vaga_id) REFERENCES vaga (id)
);
-- END DDL