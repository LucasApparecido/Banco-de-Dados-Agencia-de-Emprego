-- DML

INSERT INTO cidade (id, uf, nome) 
VALUES  (1, 'BA', 'Salvador'),
        (2, 'PE', 'Recife'),
        (3, 'RS', 'Porto Alegre'),
        (4, 'CE', 'Fortaleza'),
        (5, 'PR', 'Curitiba'),
        (6, 'DF', 'Brasília'),
        (7, 'AM', 'Manaus'),
        (8, 'SC', 'Florianópolis'),
        (9, 'PB', 'João Pessoa'),
        (10, 'GO', 'Goiânia');

INSERT INTO trabalhador (cpf, data_nascimento, nome, cidade_id) 
VALUES  ('45678901234', '1988-07-22', 'Fernanda Santos', 4),
        ('56789012345', '1995-11-05', 'Lucas Oliveira', 5),
        ('67890123456', '1980-04-18', 'Mariana Souza', 6),
        ('78901234567', '1993-09-12', 'Pedro Silva', 7),
        ('89012345678', '2002-03-25', 'Camila Santos', 8),
        ('90123456789', '1975-12-30', 'Ricardo Pereira', 9),
        ('10111213141', '1987-06-08', 'Juliana Lima', 10),
        ('12131415161', '1998-02-14', 'Gabriel Costa', 2),
        ('13141516171', '1983-10-03', 'Ana Oliveira', 3),
        ('14151617181', '2005-05-20', 'Mateus Almeida', 1);

INSERT INTO solicitante (cnpj, razao_social, cidade_id) 
VALUES  ('87654321098765', 'Empresa D', 4),
        ('76543210987654', 'Empresa E', 5),
        ('65432109876543', 'Empresa F', 6),
        ('54321098765432', 'Empresa G', 7),
        ('43210987654321', 'Empresa H', 8),
        ('32109876543210', 'Empresa I', 9),
        ('21098765432109', 'Empresa J', 1),
        ('10987654321098', 'Empresa K', 2),
        ('10987654321097', 'Empresa L', 3),
        ('10987654321096', 'Empresa M', 1);

INSERT INTO vaga (id, descricao, nome, status, solicitante_cnpj, cidade_id) 
VALUES  (1, 'Analista de Sistemas', 'Vaga 1', 1, '87654321098765', 4),
        (2, 'Gerente de Vendas', 'Vaga 2', 1, '76543210987654', 5),
        (3, 'Engenheiro Civil', 'Vaga 3', 1, '65432109876543', 6),
        (4, 'Designer Gráfico', 'Vaga 4', 0, '54321098765432', 7),
        (5, 'Analista Financeiro', 'Vaga 5', 0, '43210987654321', 8),
        (6, 'Advogado Trabalhista', 'Vaga 6', 1, '32109876543210', 9),
        (7, 'Técnico em Informática', 'Vaga 7', 1, '21098765432109', 1),
        (8, 'Analista de RH', 'Vaga 8', 0, '10987654321098', 3),
        (9, 'Operador de Máquinas', 'Vaga 9', 0, '10987654321097', 2),
        (10, 'Estagiário de TI', 'Vaga 10', 1, '10987654321096', 1);

INSERT INTO candidatura (trabalhador_cpf, vaga_id, resultado, data_entrevista, descricao_resultado) 
VALUES  ('45678901234', 1, 1, '2023-04-05', 'Aprovado'),
        ('56789012345', 2, 0, '2023-05-10', 'Reprovado por motivo xyz'),
        ('67890123456', 3, 1, '2023-06-15', 'Aprovado'),
        ('78901234567', 4, 1, '2023-07-20', 'Aprovado'),
        ('89012345678', 5, 0, '2023-08-25', 'Reprovado por motivo xyz'),
        ('90123456789', 6, 0, '2023-09-30', 'Reprovado por motivo xyz'),
        ('10111213141', 7, 1, '2023-10-05', 'Aprovado'),
        ('12131415161', 8, 0, '2023-11-10', 'Reprovado por motivo xyz'),
        ('13141516171', 9, 1, '2023-12-15', 'Aprovado'),
        ('14151617181', 10, 1, '2024-01-20', 'Aprovado');

-- END DML