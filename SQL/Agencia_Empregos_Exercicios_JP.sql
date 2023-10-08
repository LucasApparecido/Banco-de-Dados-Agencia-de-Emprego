--1. Listar os dados dos Trabalhadores;
select 
t.cpf,
t.data_nascimento,
t.nome as nome,
c.nome as cidade
from trabalhador t, cidade c where t.cidade_id = c.id;

--3. Listar os dados da entrevista: nome do solicitante, nome da vaga, 
--   descrição da vaga, data da entrevista, nome do entrevistado e resultado final da entrevista;
select * from vaga;
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
t.cpf = c.trabalhador_cpf and
s.cnpj = v.solicitante_cnpj and
c.vaga_id = v.id;

--5. Total de vagas da agencia;
select count(v.id) as qtd_vagas from vaga v
where
v.solicitante_cnpj = '87654321098765';
-- END EXERCICIOS 1, 3, 5