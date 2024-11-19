-- 2023028536
-- A2
SELECT DISTINCT
    ano_jogos as Ano, estacao as Estação
FROM
    jogos as J
JOIN jogos_cidade AS JC
    ON J.id_jogos = JC.id_jogos 
JOIN cidade AS C
    ON JC.id_cidade = C.id_cidade
WHERE nome_cidade = 'Londres' ;
-- A0
SELECT
    nome_completo as Nome
FROM
    pessoa as P
JOIN jogos_competidor as JC
    ON P.id_pessoa = JC.id_pessoa
WHERE idade >= 80 ;
-- A3
SELECT DISTINCT
    nome_completo as Nome, altura as Altura
FROM
    pessoa as P
JOIN jogos_competidor AS JC
    ON P.id_pessoa = JC.id_pessoa
JOIN jogos as J
    ON JC.id_jogos = J.id_jogos
WHERE (P.altura >= 215 AND J.ano_jogos = 2016) ;
-- A4
SELECT 
    nome_completo as Nome,
    altura as Altura
FROM
    pessoa as P
WHERE genero = 'F' AND altura >= 200 ;
-- A1
SELECT 
    nome_completo as Nome
FROM
    pessoa as P
JOIN pessoa_regiao as PR
    ON P.id_pessoa = PR.id_pessoa
JOIN regiao_con as RC
    ON PR.id_regiao = RC.id_regiao
WHERE
    nome_regiao = 'Equipe olímpica de refugiados' ;
-- B2
SELECT 
    RC.con AS Código, 
    RC.nome_regiao AS Nome, 
    COUNT(PR.id_pessoa) AS Total
FROM 
    regiao_con RC
JOIN pessoa_regiao AS PR
    ON RC.id_regiao = PR.id_regiao
GROUP BY 
    RC.con, RC.nome_regiao
ORDER BY 
    Total DESC
LIMIT 5 ;
-- B8
SELECT
    ano_jogos AS Ano,
    COUNT(DISTINCT con) AS 'Quantidade Cons'
FROM
    jogos AS J
JOIN jogos_competidor AS JC
    ON J.id_jogos = JC.id_jogos
JOIN pessoa AS P
    ON JC.id_pessoa = P.id_pessoa
JOIN pessoa_regiao AS PR
    ON P.id_pessoa = PR.id_pessoa
JOIN regiao_con AS RC
    ON PR.id_regiao = RC.id_regiao
WHERE
    estacao = 'Inverno'
GROUP BY
    ano_jogos
ORDER BY
    Ano ASC ;
-- B5
SELECT
    nome_pais AS País, nome_continente AS Continente
FROM 
    cidade AS C
JOIN jogos_cidade as JC
    ON C.id_cidade = JC.id_cidade
JOIN jogos as J
    ON JC.id_jogos = J.id_jogos
WHERE
    J.estacao = 'Inverno' ;
-- B3
SELECT 
    C.nome_cidade AS Cidade, 
    C.nome_pais AS País
FROM 
    cidade C
JOIN jogos_cidade JC
    ON C.id_cidade = JC.id_cidade
GROUP BY 
    C.id_cidade, C.nome_cidade, C.nome_pais
HAVING 
    COUNT(JC.id_jogos) > 1 ;
-- B6
SELECT 
    J.ano_jogos as Ano,
    C.nome_cidade as Cidade,
    COUNT(DISTINCT E.id_esporte) as 'Quantidade Esportes'
FROM
    cidade as C
JOIN jogos_cidade as JC
    ON C.id_cidade = JC.id_cidade
JOIN jogos as J
    ON JC.id_jogos = J.id_jogos
JOIN jogos_competidor as JCOM
    ON J.id_jogos = JCOM.id_jogos
JOIN competidor_evento as CE
    ON JCOM.id_competidor = CE.id_competidor
JOIN evento as E
    ON CE.id_evento = E.id_evento
JOIN esporte as ES
    ON E.id_esporte = ES.id_esporte
WHERE
    J.estacao = 'Verão'
GROUP BY
    J.ano_jogos, C.nome_cidade
ORDER BY
    J.ano_jogos ASC ;