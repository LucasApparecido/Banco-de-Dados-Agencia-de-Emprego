-- DDL
CREATE TABLE cidade (
    id INTEGER,
    PRIMARY KEY (id),
    uf CHAR(2),
    nome VARCHAR(50)
);

CREATE TABLE trabalhador (
    cpf VARCHAR(11),
    PRIMARY KEY (cpf),
    data_nascimento DATE,
    nome VARCHAR(50),
    cidade_id INTEGER,
    FOREIGN KEY(cidade_id) REFERENCES cidade (id)
);

CREATE TABLE solicitante (
    cnpj VARCHAR(14),
    PRIMARY KEY (cnpj),
    nome VARCHAR(50),
    razao_social VARCHAR(50),
    cidade_id INTEGER,
    FOREIGN KEY(cidade_id) REFERENCES cidade (id)
);

CREATE TABLE vaga (
    id INTEGER,
    PRIMARY KEY (id),
    descricao VARCHAR(100),
    nome VARCHAR(45),
    status BOOLEAN,
    salario FLOAT,
    solicitante_cnpj VARCHAR(14),
    cidade_id INTEGER,
    FOREIGN KEY(solicitante_cnpj) REFERENCES solicitante (cnpj),
    FOREIGN KEY(cidade_id) REFERENCES cidade (id)
);

CREATE TABLE candidatura (
    trabalhador_cpf VARCHAR(11),
    vaga_id INTEGER,
    PRIMARY KEY (trabalhador_cpf, vaga_id),
    resultado INTEGER,
    data_entrevista DATE,
    descricao_resultado VARCHAR(250),
    FOREIGN KEY(trabalhador_cpf) REFERENCES trabalhador (cpf),
    FOREIGN KEY(vaga_id) REFERENCES vaga (id)
);
-- END DDL