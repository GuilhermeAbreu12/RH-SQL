# RH-SQL
Banco de dados SQL simulando o funcionamento de um setor de RH. Exercício realizado no segundo semestre de 2025, durante as aulas da matéria "Banco de Dados II" na ETEC Antônio Devisate.
## Proposta:
**Atividade 03**
Considere um sistema de RH com as tabelas Funcionarios, Departamentos e Projetos, onde: 
- A tabela Funcionarios armazena código, nome, e-mail e código do departamento. 
- A tabela Departamentos contém código e nome do departamento. 
- A tabela Projetos registra os projetos em que os funcionários estão alocados, com código do projeto, nome do projeto e código do funcionário. 

Implemente uma VIEW Equipe_Projeto que exiba, para cada funcionário alocado em um projeto, os seguintes dados: 
- Código e nome do departamento 
- Nome e e-mail do funcionário 
- Código e nome do projeto 

A VIEW deve relacionar as tabelas para mostrar a equipe de cada projeto, incluindo o departamento de cada funcionário.