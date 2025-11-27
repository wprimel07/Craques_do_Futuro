2. Script SQL com Consultas (SELECT)
Este script apresenta consultas essenciais para extrair informações do sistema de gestão de talentos, utilizando JOIN, WHERE, ORDER BY e funções de agregação.

SQL

-- 1. Consultar a Média de Desempenho (Nota Geral) dos atletas do Sub-13
SELECT
    A.Nome || ' ' || A.Sobrenome AS Nome_Atleta,
    T.Nome_Categoria,
    ROUND(AVG(AT.Nota_Passe + AT.Nota_Chute + AT.Nota_Drible + AT.Nota_Visao_Jogo) / 4, 2) AS Media_Geral
FROM
    ATLETA A
JOIN
    ATLETA_TURMA ATR ON A.ID_Atleta = ATR.ID_Atleta
JOIN
    TURMA T ON ATR.ID_Turma = T.ID_Turma
JOIN
    AVALIACAO_TECNICA AT ON A.ID_Atleta = AT.ID_Atleta
WHERE
    T.Nome_Categoria = 'Sub-13'
GROUP BY
    A.Nome, A.Sobrenome, T.Nome_Categoria
ORDER BY
    Media_Geral DESC;

-- 2. Listar Atletas e seus Responsáveis com o telefone de contato
SELECT
    A.Nome || ' ' || A.Sobrenome AS Atleta,
    R.Nome AS Responsavel,
    R.Telefone
FROM
    ATLETA A
JOIN
    RESPONSAVEL R ON A.ID_Responsavel = R.ID_Responsavel
ORDER BY
    A.Sobrenome
LIMIT 10; -- Limita o resultado para visualização

-- 3. Contar o número de faltas (Presenca = 'N') por atleta
SELECT
    A.Nome || ' ' || A.Sobrenome AS Atleta,
    SUM(CASE WHEN F.Presenca = 'N' THEN 1 ELSE 0 END) AS Total_Faltas
FROM
    ATLETA A
JOIN
    FREQUENCIA F ON A.ID_Atleta = F.ID_Atleta
GROUP BY
    A.Nome, A.Sobrenome
HAVING
    Total_Faltas > 0
ORDER BY
    Total_Faltas DESC;

-- 4. Mostrar Ocorrências disciplinares recentes (últimos 30 dias) e o Treinador que a registrou
SELECT
    O.Data_Ocorrencia,
    A.Nome || ' ' || A.Sobrenome AS Atleta,
    T.Nome || ' ' || T.Sobrenome AS Treinador,
    O.Descricao
FROM
    OCORRENCIA O
JOIN
    ATLETA A ON O.ID_Atleta = A.ID_Atleta
JOIN
    TREINADOR T ON O.ID_Treinador = T.ID_Treinador
WHERE
    O.Data_Ocorrencia >= DATE('now', '-30 days') -- Consulta adaptada para SQLITE. Use GETDATE() - 30 ou NOW() - INTERVAL '30 days' em outros bancos.
ORDER BY
    O.Data_Ocorrencia DESC;