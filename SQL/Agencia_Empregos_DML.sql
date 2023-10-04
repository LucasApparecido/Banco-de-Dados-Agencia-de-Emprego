INSERT INTO cidade (id, uf, nome) 
VALUES  (4, 'BA', 'Salvador'),
        (5, 'PE', 'Recife'),
        (6, 'RS', 'Porto Alegre'),
        (7, 'CE', 'Fortaleza'),
        (8, 'PR', 'Curitiba'),
        (9, 'DF', 'Brasília'),
        (10, 'AM', 'Manaus'),
        (11, 'SC', 'Florianópolis'),
        (12, 'PB', 'João Pessoa'),
        (13, 'GO', 'Goiânia');

INSERT INTO trabalhador (cpf, data_nascimento, nome, cidade_id) 
VALUES  (45678901234, '1988-07-22', 'Fernanda Santos', 4),
        (56789012345, '1995-11-05', 'Lucas Oliveira', 5),
        (67890123456, '1980-04-18', 'Mariana Souza', 6),
        (78901234567, '1993-09-12', 'Pedro Silva', 7),
        (89012345678, '2002-03-25', 'Camila Santos', 8),
        (90123456789, '1975-12-30', 'Ricardo Pereira', 9),
        (10111213141, '1987-06-08', 'Juliana Lima', 10),
        (12131415161, '1998-02-14', 'Gabriel Costa', 11),
        (13141516171, '1983-10-03', 'Ana Oliveira', 12),
        (14151617181, '2005-05-20', 'Mateus Almeida', 1);

INSERT INTO solicitante (cnpj, razao_social, cidade_id) 
VALUES  (87654321098765, 'Empresa D', 4),
        (76543210987654, 'Empresa E', 5),
        (65432109876543, 'Empresa F', 6),
        (54321098765432, 'Empresa G', 7),
        (43210987654321, 'Empresa H', 8),
        (32109876543210, 'Empresa I', 9),
        (21098765432109, 'Empresa J', 10),
        (10987654321098, 'Empresa K', 11),
        (10987654321097, 'Empresa L', 12),
        (10987654321096, 'Empresa M', 1);

INSERT INTO vaga (id, descricao, nome, status, solicitante_cnpj, cidade_id) 
VALUES  (4, 'Analista de Sistemas', 'Vaga 4', 1, 87654321098765, 4),
        (5, 'Gerente de Vendas', 'Vaga 5', 1, 76543210987654, 5),
        (6, 'Engenheiro Civil', 'Vaga 6', 1, 65432109876543, 6),
        (7, 'Designer Gráfico', 'Vaga 7', 1, 54321098765432, 7),
        (8, 'Analista Financeiro', 'Vaga 8', 1, 43210987654321, 8),
        (9, 'Advogado Trabalhista', 'Vaga 9', 1, 32109876543210, 9),
        (10, 'Técnico em Informática', 'Vaga 10', 1, 21098765432109, 10),
        (11, 'Analista de RH', 'Vaga 11', 1, 10987654321098, 11),
        (12, 'Operador de Máquinas', 'Vaga 12', 1, 10987654321097, 12),
        (13, 'Estagiário de TI', 'Vaga 13', 1, 10987654321096, 1);

INSERT INTO candidatura (trabalhador_cpf, vaga_id, resultado, data_entrevista, descricao_resultado) 
VALUES  (45678901234, 4, 1, '2023-04-05', 'Aprovado'),
        (56789012345, 5, 0, '2023-05-10', 'Reprovado'),
        (67890123456, 6, 2, '2023-06-15', 'Pendente'),
        (78901234567, 7, 1, '2023-07-20', 'Aprovado'),
        (89012345678, 8, 0, '2023-08-25', 'Reprovado'),
        (90123456789, 9, 2, '2023-09-30', 'Pendente'),
        (10111213141, 10, 1, '2023-10-05', 'Aprovado'),
        (12131415161, 11, 0, '2023-11-10', 'Reprovado'),
        (13141516171, 12, 2, '2023-12-15', 'Pendente'),
        (14151617181, 13, 1, '2024-01-20', 'Aprovado');
