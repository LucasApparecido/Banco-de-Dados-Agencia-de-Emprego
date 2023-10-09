-- New DML

-- Insert into cidade
INSERT INTO cidade (id, uf, nome) 
VALUES  
    (12, 'SP', 'São Paulo'),
    (13, 'RJ', 'Rio de Janeiro'),
    (14, 'MG', 'Belo Horizonte'),
    (15, 'RS', 'Porto Alegre'),
    (16, 'SC', 'Florianópolis'),
    (17, 'BA', 'Salvador'),
    (18, 'PE', 'Recife'),
    (19, 'CE', 'Fortaleza'),
    (20, 'PR', 'Curitiba'),
    (21, 'DF', 'Brasília'),
    (22, 'GO', 'Goiânia'),
    (23, 'RN', 'Natal'),
    (24, 'MT', 'Cuiabá'),
    (25, 'MS', 'Campo Grande'),
    (26, 'TO', 'Palmas'),
    (27, 'AM', 'Manaus'),
    (28, 'PA', 'Belém'),
    (29, 'RO', 'Porto Velho'),
    (30, 'AC', 'Rio Branco');

-- Insert into trabalhador
INSERT INTO trabalhador (cpf, data_nascimento, nome, cidade_id) 
VALUES  
    ('16171819202', '1990-02-28', 'Carlos Oliveira', 12),
    ('17202122233', '1985-09-15', 'Amanda Pereira', 13),
    ('18232425203', '1992-12-08', 'Bruno Silva', 14),
    ('19202728213', '1983-04-02', 'Luana Santos', 15),
    ('20213334343', '1997-07-18', 'Eduardo Costa', 16),
    ('21222335354', '1989-11-23', 'Isabel Oliveira', 17),
    ('22242636364', '1994-06-12', 'Felipe Pereira', 18),
    ('23272937374', '1980-10-05', 'Mariana Costa', 19),
    ('24283038384', '1998-03-20', 'Gustavo Silva', 20),
    ('25303339394', '1986-08-13', 'Roberta Oliveira', 21),
    ('26353640404', '1995-01-26', 'Ricardo Costa', 22),
    ('27373841414', '1982-05-09', 'Camila Santos', 23),
    ('28394042424', '2000-09-22', 'Daniel Pereira', 24),
    ('29414243434', '1987-02-14', 'Ana Oliveira', 25),
    ('30424444444', '1996-06-29', 'Lucas Silva', 26),
    ('31454645454', '1984-11-12', 'Juliana Lima', 27),
    ('32464846464', '2001-04-05', 'Rodrigo Costa', 28),
    ('33475047474', '1988-07-21', 'Carolina Oliveira', 29),
    ('34495248484', '1993-12-14', 'André Silva', 30),
    ('35464758590', '1993-12-14', 'Guiliano', 1);

-- Insert into solicitante
INSERT INTO solicitante (cnpj, nome, razao_social, cidade_id) 
VALUES  
    ('35464758590', 'Empresa O', 'Oliveira e Cia', 12),
    ('46575869780', 'Empresa P', 'Pereira Ltda', 13),
    ('57686970810', 'Empresa Q', 'Qualidade S/A', 14),
    ('68797081920', 'Empresa R', 'Rocha & Filhos', 15),
    ('79808192030', 'Empresa S', 'Silva Empreendimentos', 16),
    ('90819202140', 'Empresa U', 'Unidos Ltda', 17),
    ('01920212230', 'Empresa V', 'Vieira e Filhos', 18),
    ('12930313240', 'Empresa W', 'World Ltda', 19),
    ('23940414250', 'Empresa X', 'Xavier Empreendimentos', 20),
    ('34950515260', 'Empresa Y', 'Yamamoto & Cia', 11),
    ('45960616270', 'Empresa Z', 'Zanetti S/A', 11),
    ('11222333440', 'Empresa A1', 'A1 Empreendimentos', 11),
    ('22333444550', 'Empresa B2', 'B2 Ltda', 11),
    ('33444555660', 'Empresa C3', 'C3 Empreendimentos', 25),
    ('44555666770', 'Empresa D4', 'D4 S/A', 26),
    ('55666777880', 'Empresa E5', 'E5 Ltda', 27),
    ('66777888990', 'Empresa F6', 'F6 Empreendimentos', 28),
    ('77888999000', 'Empresa G7', 'G7 S/A', 29),
    ('88990000110', 'Empresa H8', 'H8 Ltda', 30);

-- Insert into vaga
INSERT INTO vaga (id, descricao, nome, status, salario, solicitante_cnpj, cidade_id) 
VALUES  
    (11, 'Desenvolvedor Web', 'Vaga 11', TRUE, 1500.00, '35464758590', 12),
    (12, 'Analista de Marketing', 'Vaga 12', TRUE, 1500.00, '46575869780', 13),
    (13, 'Engenheiro Eletricista', 'Vaga 13', TRUE, 1500.00, '57686970810', 14),
    (14, 'Arquiteto de Software', 'Vaga 14', FALSE, 1500.00, '68797081920', 15),
    (15, 'Analista de Compras', 'Vaga 15', FALSE, 1500.00, '79808192030', 16),
    (16, 'Contador', 'Vaga 16', TRUE, 1500.00, '90819202140', 17),
    (17, 'Suporte Técnico', 'Vaga 17', TRUE, 1500.00, '01920212230', 18),
    (18, 'Recrutador', 'Vaga 18', FALSE, 1500.00, '12930313240', 19),
    (19, 'Operador de Logística', 'Vaga 19', FALSE, 1500.00, '23940414250', 20),
    (20, 'Analista de TI', 'Vaga 20', TRUE, 1500.00, '34950515260', 21),
    (21, 'Gerente Financeiro', 'Vaga 21', TRUE, 1500.00, '45960616270', 22),
    (22, 'Designer Industrial', 'Vaga 22', FALSE, 1500.00, '11222333440', 23),
    (23, 'Estagiário de Engenharia', 'Vaga 23', TRUE, 1500.00, '22333444550', 24),
    (24, 'Analista de RH', 'Vaga 24', FALSE, 1500.00, '33444555660', 25),
    (25, 'Analista de Qualidade', 'Vaga 25', TRUE, 1500.00, '44555666770', 26),
    (26, 'Desenvolvedor Mobile', 'Vaga 26', TRUE, 1500.00, '55666777880', 27),
    (27, 'Engenheiro de Produção', 'Vaga 27', FALSE, 1500.00, '66777888990', 28),
    (28, 'Analista de Vendas', 'Vaga 28', TRUE, 1500.00, '77888999000', 29),
    (29, 'Analista de Suporte', 'Vaga 29', FALSE, 1500.00, '88990000110', 30),
    (30, 'Estagiário de Marketing', 'Vaga 30', TRUE, 1500.00, '35464758590', 12);

-- Insert into candidatura
INSERT INTO candidatura (trabalhador_cpf, vaga_id, resultado, data_entrevista, descricao_resultado) 
VALUES  
    ('16171819202', 11, NULL, NULL, NULL),
    ('17202122233', 12, 0, '2023-05-10', 'Reprovado por falta de experiência'),
    ('18232425203', 13, NULL, NULL, NULL),
    ('19202728213', 14, 1, '2023-07-20', 'Aprovado'),
    ('20213334343', 15, 0, '2023-08-25', 'Reprovado por falta de habilidades técnicas'),
    ('21222335354', 16, NULL, NULL, NULL),
    ('22242636364', 17, NULL, NULL, NULL),
    ('23272937374', 18, 0, '2023-11-10', 'Reprovado por falta de alinhamento cultural'),
    ('24283038384', 19, 1, '2023-12-15', 'Aprovado'),
    ('25303339394', 20, 1, '2023-12-15', 'Aprovado'),
    ('26353640404', 21, 1, '2023-12-15', 'Aprovado'),
    ('27373841414', 22, NULL, NULL, NULL),
    ('28394042424', 23, 0, '2024-01-05', 'Reprovado por falta de conhecimento técnico'),
    ('29414243434', 24, 1, '2024-01-15', 'Aprovado'),
    ('30424444444', 25, 0, '2024-02-01', 'Reprovado por falta de comprometimento'),
    ('31454645454', 26, NULL, NULL, NULL),
    ('32464846464', 27, NULL, NULL, NULL),
    ('33475047474', 28, 1, '2024-02-20', 'Aprovado'),
    ('34495248484', 29, 0, '2024-03-05', 'Reprovado por falta de experiência'),
    ('35464758590', 30, 1, '2024-03-15', 'Aprovado');
