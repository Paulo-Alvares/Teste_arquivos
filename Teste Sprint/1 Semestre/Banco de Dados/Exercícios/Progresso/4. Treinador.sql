USE sprint2;

CREATE TABLE Treinador(
idTreinador INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
tel VARCHAR(12),
email VARCHAR(60),
fkTreinador INT,
FOREIGN KEY (fkTreinador) REFERENCES Treinador (idTreinador)
);

CREATE TABLE Nadador(
idNadador INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
UF CHAR(2),
dtNasc DATE,
fkTreinador INT,
FOREIGN KEY (fkTreinador) REFERENCES Treinador (idTreinador)
);

INSERT INTO Treinador VALUES
(null, 'Jerson da Rabeta', '1198765-0897', 'jerson.rabeta@gmail.com', null),
(null, 'Chris Arraya', '1195465-7697', 'chrisarraya45@gmail.com', null),
(null, 'Toninho Ciclone', '1191426-9574', 'ciclonetonhao17@gmail.com', null),
(null, 'Mariana Coral', '1194365-6497', 'coralianaseaworld@gmail.com', null),
(null, 'Juninho Açafrão', '1199998-2165', 'jracafra@gmail.com', 1),
(null, 'Robson Peixeira', '1198463-2468', 'peixerarobson65@gmail.com', 1),
(null, 'Clóvis Mergulhador', '119345-9685', 'cvcvdeep@gmail.com', 2);

INSERT INTO Nadador VALUES
(null, 'Xuxa Meneghel', 'SP', '1986-03-19', 1),
(null, 'Cláudia Arraia', 'RJ', '1976-02-12', 2),
(null, 'Carlos Xulipa', 'AM', '1956-10-14', 3),
(null, 'Bora Bill', 'BA', '1998-12-16', 4),
(null, 'Francisco Barbatana', 'SE', '2001-11-23', 5),
(null, 'Chico Martelo', 'SC', '1988-06-25', 6),
(null, 'Rodrigo Nado', 'RS', '2003-08-01', 7),
(null, 'Talita Tsunami', 'SP', '2002-07-02', 2),
(null, 'Valdo Oku', 'SP', '2000-06-11', 4),
(null, 'George Ramos', 'RJ', '1995-05-29', 1);


-- Exibir os dados das tabelas
SELECT * FROM Treinador;
SELECT * FROM Nadador;

-- Exibir os dados dos treinadores e os dados de seus respectivos nadadores.
SELECT * FROM Treinador as t JOIN Nadador as n
ON t.idTreinador = n.fkTreinador;

-- Exibir os dados de um determinado treinador e os dados de seus respectivos nadadores.
SELECT * FROM Treinador as t JOIN Nadador as n
ON t.idTreinador = n.fkTreinador
WHERE t.idTreinador = 4;

-- Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores.
SELECT t.*, tOrient.nome  FROM Treinador AS t JOIN Treinador tOrient
ON tOrient.idTreinador = t.fkTreinador;

-- Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores de determinado treinador orientador 
SELECT t.*, tOrient.nome  FROM Treinador AS t JOIN Treinador tOrient
ON tOrient.idTreinador = t.fkTreinador
WHERE tOrient.idTreinador = 1;

-- Exibir os dados dos treinadores, os dados dos respectivos nadadores e os dados dos respectivos treinadores orientadores.
SELECT * FROM Treinador AS t
JOIN Nadador AS n ON t.idTreinador = n.fkTreinador 
JOIN Treinador AS tOrient ON tOrient.idTreinador = t.fkTreinador;

-- Exibir os dados de um treinador, os dados dos respectivos nadadores e os dados do seu treinador orientador.
SELECT t.nome, n.*, tOrient.* FROM Treinador AS t
JOIN Nadador AS n ON t.idTreinador = n.fkTreinador 
JOIN Treinador AS tOrient ON tOrient.idTreinador = t.fkTreinador
WHERE tOrient.idTreinador = 2;
