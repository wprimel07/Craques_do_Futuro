-- 1. Excluir uma ocorrência disciplinar que foi resolvida e não é mais necessária (Ocorrência de ID 2)
DELETE FROM OCORRENCIA
WHERE ID_Ocorrencia = 2;

-- 2. Remover um registro de frequência que foi inserido incorretamente
DELETE FROM FREQUENCIA
WHERE ID_Atleta = 102 AND Data_Treino = '2024-04-01'; -- Remover o registro de falta incorreto

-- 3. Desligar um Treinador que não está mais ativo e que não tem vínculos de FK críticos (e remover seus registros de alocação)
DELETE FROM TURMA_TREINADOR
WHERE ID_Treinador = 51;

DELETE FROM TREINADOR
WHERE ID_Treinador = 51; -- Atenção: Isso só é seguro se não houver FKs dependentes ou se for utilizado ON DELETE CASCADE.