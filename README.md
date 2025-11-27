# Craques do Futuro

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-025E8C?style=for-the-badge&logo=database&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)

Projeto prático de modelagem e implementação de banco de dados relacional utilizando SQL. Este repositório contém os scripts de criação, povoamento e manipulação de dados para um sistema de gestão hoteleira.

## 📋 Sobre o Projeto

O sistema foi desenvolvido para gerenciar uma escolinha de futebol, incluindo:
* Cadastro de **criancas** (Usuários) e **Administradores**.
* Gestão de **campeonatos** e suas categorias.
* Controle de **Reservas** (Check-in/Check-out e valores).
* Sistema de **Avaliações** das criancas.
* Associação de imagens das competicoes.

O projeto aplica conceitos de **Integridade Referencial**, **Normalização** e **Restrições de Chave (FK/PK)**.

## 📂 Estrutura do Repositório

Os scripts estão numerados para facilitar a execução na ordem correta:

| Arquivo | Descrição |
| :--- | :--- |
| `1_create_tables.sql` | **DDL**: Criação do banco de dados, tabelas e relacionamentos com `CASCADE`. |
| `2_insert_data.sql` | **DML**: Povoamento inicial das tabelas com dados fictícios para testes. |
| `3_queries_select.sql` | **DQL**: Consultas avançadas utilizando `JOIN`, `WHERE` e `ORDER BY`. |
| `4_update_delete.sql` | **DML**: Scripts de manutenção (atualização e exclusão de registros). |

## 🚀 Instruções de Execução

Para rodar o projeto em sua máquina (MySQL Workbench ou compatível):

1.  **Clone o repositório:**
    ```bash
    git clone ()
    ```
2.  **Abra os arquivos** no seu editor SQL.
3.  **Execute na ordem numérica:**
    * Rode o script `1` para criar a estrutura.
    * Rode o script `2` para inserir os dados.
    * Rode o script `3` para visualizar os relatórios e consultas.
    * Rode o script `4` para testar as atualizações e deleções.

## 🛠️ Tecnologias Utilizadas

* **MySQL Workbench 8.0** (SGBD e Modelagem)
* **Git/GitHub** (Versionamento)
* **SQL ANSI** (Linguagem de Consulta Estruturada)

---
Desenvolvido para a disciplina de Modelagem de Banco de Dados.
