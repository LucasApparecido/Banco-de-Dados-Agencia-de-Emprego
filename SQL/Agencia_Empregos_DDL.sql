CREATE TABLE cidade (
    id INTEGER, 
    PRIMARY KEY (id),
    uf CHAR(2),
    nome VARCHAR(50)
);


CREATE TABLE trabalhador (
    cpf INTEGER, 
    PRIMARY KEY (cpf),
    data_nascimento DATE,
    nome VARCHAR(50),
    cidade_id INTEGER,
    FOREIGN KEY(cidade_id) REFERENCES cidade (id)
);

CREATE TABLE solicitante (
    cnpj INTEGER,
    PRIMARY KEY (cnpj),
    razao_social VARCHAR(50),
    cidade_id INTEGER,
    FOREIGN KEY(cidade_id) REFERENCES cidade (id)
);

CREATE TABLE vaga (
    id INTEGER,
    PRIMARY KEY (id),
    descricao VARCHAR(100),
    nome VARCHAR(45),
    status INTEGER,
    solicitante_cnpj INTEGER,
    cidade_id INTEGER,
    FOREIGN KEY(solicitante_cnpj) REFERENCES solicitante (cnpj),
    FOREIGN KEY(cidade_id) REFERENCES cidade (id)
);

CREATE TABLE candidatura (
    trabalhador_cpf INTEGER,
    vaga_id INTEGER,
    PRIMARY KEY (trabalhador_cpf, vaga_id),
    resultado INTEGER,
    data_entrevista DATE,
    descricao_resultado VARCHAR(250),
    FOREIGN KEY(trabalhador_cpf) REFERENCES trabalhador (cpf),
    FOREIGN KEY(vaga_id) REFERENCES vaga (id)
);


