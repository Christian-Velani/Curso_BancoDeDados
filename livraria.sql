/*
O nosso cliente solicitou uma tabela para armazenar os livros que são comercializados pela empresa. 
A solicitação é somente para livros e não há a necessidade de realizar busca em outras tabelas. 
Hoje há um funcionário de vendas que tem uma tabela do Excel para guardar esses registros, 
mas as buscas estão ficando complexas. Decidiu-se então criar um banco de dados separado para esse 
funcionário.
Após a criação da tabela, deveremos entregar algumas queries prontas para que sejam enviadas para o 
programador. As queries são as seguintes:
1 – Trazer todos os dados.
2 – Trazer o nome do livro e o nome da editora
3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
5 – Trazer os valores dos livros das editoras de São Paulo.
6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).
*/

CREATE DATABASE Livraria;

USE Livraria;

CREATE TABLE Livros(
    NOME_LIVRO VARCHAR(100),
    NUMERO_PAGINAS VARCHAR(4),
    PRECO FLOAT(5,2),
    NOME_AUTOR VARCHAR(50),
    SEXO_AUTOR CHAR(1),  
    NOME_EDITORA VARCHAR(100),
    UF CHAR(2),
    ANO CHAR(4)  
);

INSERT INTO Livros(NOME_LIVRO, NUMERO_PAGINAS, PRECO, NOME_AUTOR, SEXO_AUTOR, NOME_EDITORA, UF, ANO) VALUES ('Cavaleiro Real', '465', 49.9, 'Ana Claudia', 'M', 'Atlas', 'RJ', '2009');
INSERT INTO Livros(NOME_LIVRO, NUMERO_PAGINAS, PRECO, NOME_AUTOR, SEXO_AUTOR, NOME_EDITORA, UF, ANO) VALUES ('SQL para leigos', '450', 98, 'João Nunes', 'H', 'Addison', 'SP', '2018');
INSERT INTO Livros(NOME_LIVRO, NUMERO_PAGINAS, PRECO, NOME_AUTOR, SEXO_AUTOR, NOME_EDITORA, UF, ANO) VALUES ('Receitas Caseiras', '210', 45, 'Celia Tavares', 'M', 'Atlas', 'RJ', '2008');
INSERT INTO Livros(NOME_LIVRO, NUMERO_PAGINAS, PRECO, NOME_AUTOR, SEXO_AUTOR, NOME_EDITORA, UF, ANO) VALUES ('Pessoas Efetivas', '390', 78.99, 'Eduardo Santos', 'H', 'Beta', 'RJ', '2018');
INSERT INTO Livros(NOME_LIVRO, NUMERO_PAGINAS, PRECO, NOME_AUTOR, SEXO_AUTOR, NOME_EDITORA, UF, ANO) VALUES ('Habitos Saudáveis', '630', 150.98, 'Eduardo Santos', 'H', 'Beta', 'Rj', '2019');
INSERT INTO Livros(NOME_LIVRO, NUMERO_PAGINAS, PRECO, NOME_AUTOR, SEXO_AUTOR, NOME_EDITORA, UF, ANO) VALUES ('A Casa Marrom', '250', 60, 'Hermes Macedo', 'H', 'Bubba', 'MG', '2016');
INSERT INTO Livros(NOME_LIVRO, NUMERO_PAGINAS, PRECO, NOME_AUTOR, SEXO_AUTOR, NOME_EDITORA, UF, ANO) VALUES ('Estacio Querido', '310', 100, 'Geraldo Francisco', 'H', 'Insignia', 'ES', '2015');
INSERT INTO Livros(NOME_LIVRO, NUMERO_PAGINAS, PRECO, NOME_AUTOR, SEXO_AUTOR, NOME_EDITORA, UF, ANO) VALUES ('Pra sempre amigas', '510', 78.98, 'Leda Silva', 'M', 'Insignia', 'ES', '2011');
INSERT INTO Livros(NOME_LIVRO, NUMERO_PAGINAS, PRECO, NOME_AUTOR, SEXO_AUTOR, NOME_EDITORA, UF, ANO) VALUES ('Copas Inesquecíveis', '200', 130.98, 'Marco Alcantara', 'H', 'Larson', 'RS', '2018');
INSERT INTO Livros(NOME_LIVRO, NUMERO_PAGINAS, PRECO, NOME_AUTOR, SEXO_AUTOR, NOME_EDITORA, UF, ANO) VALUES ('O poder da mente', '120', 56.58, 'Clara Mafra', 'M', 'Continental', 'SP', '2017');


SELECT * FROM Livros;

SELECT NOME_LIVRO, NOME_EDITORA FROM Livros;

SELECT NOME_LIVRO, UF FROM Livros
WHERE SEXO_AUTOR = 'H';

SELECT NOME_LIVRO, NUMERO_PAGINAS FROM Livros
WHERE SEXO_AUTOR = 'M';

SELECT PRECO FROM Livros
WHERE UF = 'SP';

SELECT NOME_AUTOR, SEXO_AUTOR FROM Livros
WHERE SEXO_AUTOR = 'H' AND (UF = 'SP' OR UF = 'RJ');
