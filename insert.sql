-- 1. Inserir RESPONSAVEIS
INSERT INTO RESPONSAVEL (ID_Responsavel, Nome, Telefone, Email, CPF) VALUES
(1, 'Ana Silva', '11988887777', 'ana.silva@email.com', '12345678900'),
(2, 'Carlos Pereira', '21977776666', 'carlos.p@email.com', '98765432100');

-- 2. Inserir ATLETAS
INSERT INTO ATLETA (ID_Atleta, Nome, Sobrenome, Data_Nascimento, ID_Responsavel) VALUES
(101, 'Pedro', 'Souza', '2010-05-15', 1),
(102, 'Lucas', 'Mendes', '2011-09-20', 2),
(103, 'Mariana', 'Costa', '2010-01-10', 1);

-- 3. Inserir TURMAS (Categorias)
INSERT INTO TURMA (ID_Turma, Nome_Categoria, Faixa_Etaria) VALUES
(1, 'Sub-15', '14-15 anos'),
(2, 'Sub-13', '12-13 anos'),
(3, 'Sub-11', '10-11 anos');

-- 4. Inserir TREINADORES
INSERT INTO TREINADOR (ID_Treinador, Nome, Sobrenome, Telefone, Licenca_CBF) VALUES
(50, 'Rafael', 'Gomes', '11965432100', 'CBF-001'),
(51, 'Fernanda', 'Lima', '21912345678', 'CBF-002');

-- 5. Alocar ATLETAS em TURMAS (ATLETA_TURMA)
INSERT INTO ATLETA_TURMA (ID_Atleta, ID_Turma, Data_Inicio) VALUES
(101, 2, '2024-03-01'), -- Pedro no Sub-13
(102, 3, '2024-03-01'), -- Lucas no Sub-11
(103, 2, '2024-03-01'); -- Mariana no Sub-13

-- 6. Alocar TREINADORES em TURMAS (TURMA_TREINADOR)
INSERT INTO TURMA_TREINADOR (ID_Turma, ID_Treinador, Data_Alocacao) VALUES
(2, 50, '2024-01-15'), -- Rafael no Sub-13
(3, 51, '2024-01-15'); -- Fernanda no Sub-11

-- 7. Inserir AVALIACOES_TECNICAS
INSERT INTO AVALIACAO_TECNICA (ID_Atleta, Data_Avaliacao, ID_Treinador, Nota_Passe, Nota_Chute, Nota_Drible, Nota_Visao_Jogo) VALUES
(101, '2024-04-10', 50, 8.5, 7.0, 9.0, 7.5),
(102, '2024-04-10', 51, 6.0, 8.0, 6.5, 7.0),
(103, '2024-04-10', 50, 7.5, 7.5, 8.0, 8.5);

-- 8. Inserir REGISTROS de FREQUENCIA
INSERT INTO FREQUENCIA (ID_Atleta, Data_Treino, Presenca) VALUES
(101, '2024-04-01', 'S'),
(101, '2024-04-03', 'S'),
(102, '2024-04-01', 'N'), -- Falta
(103, '2024-04-03', 'S');

-- 9. Inserir OCORRENCIAS
INSERT INTO OCORRENCIA (ID_Ocorrencia, ID_Atleta, ID_Treinador, Data_Ocorrencia, Tipo_Ocorrencia, Descricao) VALUES
(1, 102, 51, '2024-04-05', 'Verbal', 'Atraso recorrente no início do treino.'),
(2, 101, 50, '2024-04-06', 'Técnica', 'Comportamento de individualismo em campo.');