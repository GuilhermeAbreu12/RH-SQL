CREATE DATABASE RH;
USE RH;

CREATE TABLE Departamentos(
	CODIGO INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);
INSERT INTO Departamentos(nome) VALUES
	("Recursos Humanos"),
	("Front-end"),
	("Back-end");

CREATE TABLE Funcionarios(
	CODIGO INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    codigo_departamento INT DEFAULT 0 NOT NULL,
    FOREIGN KEY(codigo_departamento) REFERENCES Departamentos(CODIGO) ON DELETE CASCADE
);
INSERT INTO Funcionarios(nome, email, codigo_departamento) VALUES
	('João Pedro', 'joaopedro_rh@gmail.com', 1),
	('Thiago Silva', 'thiagosilva_css@gmail.com', 2),
	('André Lima', 'andrelima_node@gmail.com', 3);
SELECT * FROM Funcionarios;
CREATE TABLE Projetos(
	CODIGO INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    codigo_funcionario INT NOT NULL,
	FOREIGN KEY (codigo_funcionario) REFERENCES Funcionarios(CODIGO) ON DELETE CASCADE
);
INSERT INTO Projetos(nome, codigo_funcionario) VALUES
	("Yahe Doces", 7),
	("ETEChat", 8),
	("Jovem Aprendiz", 6);

CREATE OR REPLACE VIEW Equipe_Projeto AS
	SELECT
		D.CODIGO AS CODIGO_DEPARTAMENTO,
        D.nome AS nome_departamento,
        F.nome AS nome_funcionario,
        F.email AS email_funcionario,
		P.CODIGO AS codigo_projeto,
        P.nome AS nome_projeto
	FROM Projetos P
		JOIN Funcionarios F ON F.CODIGO = P.codigo_funcionario
		JOIN Departamentos D ON D.CODIGO = F.codigo_departamento;
	
SELECT * FROM Equipe_Projeto;
DESCRIBE Equipe_Projeto;