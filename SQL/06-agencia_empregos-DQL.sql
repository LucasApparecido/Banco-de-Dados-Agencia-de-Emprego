--1. Listar os dados dos Trabalhadores;
select
    t.cpf,
    t.data_nascimento,
    t.nome as nome,
    c.nome as cidade
from
    trabalhador t,
    cidade c
where
    t.cidade_id = c.id;

--2. Listar o Solicitantes da cidade de Anápolis;
SELECT
    s.cnpj,
    s.nome,
    s.razao_social,
    cidade.nome as nome_cidade,
    s.cidade_id
FROM
    solicitante s
    JOIN 
		cidade ON s.cidade_id = cidade.id
WHERE
    cidade.nome = 'Anápolis';

--3. Listar os dados da entrevista: nome do solicitante, nome da vaga, 
--   descrição da vaga, data da entrevista, nome do entrevistado e resultado final da entrevista;
select
    *
from
    vaga;

select
    s.razao_social as nome_solicitante,
    v.nome as nome_vaga,
    v.descricao as vaga_descricao,
    c.data_entrevista,
    t.nome as nome_trabalhador,
    c.descricao_resultado as resultado,
    c.resultado as resultado_id
from
    candidatura c,
    trabalhador t,
    solicitante s,
    vaga v
where
    t.cpf = c.trabalhador_cpf
    and s.cnpj = v.solicitante_cnpj
    and c.vaga_id = v.id;

--4. Listar as Vagas que já tiveram entrevista 
--   (nome do solicitante, e descrição da vaga e salário da vaga)
select
    distinct s.nome,
    v.descricao,
    v.salario
from
    solicitante s,
    vaga v,
    candidatura c
where
    v.solicitante_cnpj = s.cnpj
    and v.id = c.vaga_id
    and c.data_entrevista is not null;

--5. Total de vagas da agencia;
select
    count(v.id) as qtd_vagas
from
    vaga v
where
    v.solicitante_cnpj = '87654321098765';

--6. Total de trabalhadores entrevistados para a vaga 
--   (Descrição da vaga, total de entrevistados);
select
    v.descricao,
    COUNT(c.trabalhador_cpf) as total_entrevistados
from
    vaga v,
    candidatura c
where
    v.id = c.vaga_id
group by
    v.descricao;