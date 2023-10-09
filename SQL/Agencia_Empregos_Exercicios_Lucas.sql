--2. Listar o Solicitantes da cidade de Anápolis;
SELECT
    *
FROM
    solicitante
WHERE
    cidade_id = (
        SELECT
            id
        FROM
            cidade
        WHERE
            nome = 'Anápolis'
    );

--4. Listar as Vagas que já tiveram entrevista 
--   (nome do solicitante, e descrição da vaga e salário da vaga)
SELECT
    DISTINCT s.nome,
    v.descricao,
    v.salario
FROM
    solicitante s,
    vaga v,
    candidatura c
WHERE
    v.solicitante_cnpj = s.cnpj
    AND v.id = c.vaga_id
    AND c.data_entrevista IS NOT NULL;

--6. Total de trabalhadores entrevistados para a vaga 
--   (Descrição da vaga, total de entrevistados);
SELECT
    v.descricao,
    COUNT(c.trabalhador_cpf) AS total_entrevistados
FROM
    vaga v,
    candidatura c
WHERE
    v.id = c.vaga_id
GROUP BY
    v.descricao;