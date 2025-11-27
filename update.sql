-- 1. Promover a nota de chute de um atleta específico (Pedro Souza) na avaliação mais recente
UPDATE AVALIACAO_TECNICA
SET Nota_Chute = 9.5
WHERE ID_Atleta = 101 AND Data_Avaliacao = (SELECT MAX(Data_Avaliacao) FROM AVALIACAO_TECNICA WHERE ID_Atleta = 101);

-- 2. Corrigir o status de presença (Mariana Costa estava presente)
UPDATE FREQUENCIA
SET Presenca = 'S'
WHERE ID_Atleta = 102 AND Data_Treino = '2024-04-01' AND Presenca = 'N'; -- Assumindo que o ID_Atleta 102 estava incorreto e o 103 é o correto

-- 3. Atualizar o telefone de contato de um responsável (Ana Silva)
UPDATE RESPONSAVEL
SET Telefone = '11900001111'
WHERE Nome = 'Ana Silva';