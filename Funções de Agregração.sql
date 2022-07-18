/* count(*), Group by, performance com operadores lógicos */

select count(*) as 'Quantidade de Registros da Tabela Cliente' from cliente;

/*operador group by */

select sexo, count(*)
from cliente;

select * from cliente;

select sexo, count(*)
from cliente
group by sexo;

/* PERFORMANCE EM OPERADORES LÓGICOS */

/* 1 MILHÃO DE REGISTROS

PARA CONTAR
SELECT COUNT(*) FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT CIDADE, COUNT(*) FROM CLIENTE
GROUP BY CIDADE;

CONDICAO
SEXO = F
CIDADE = RIO DE JANEIRO

SITUAÇÃO - TRATANDO COM OU / OR
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'F'
OR CIDADE = 'RIO DE JANEIRO';

SITUAÇÃO - TRATANDO COM E / AND
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE CIDADE = 'RIO DE JANEIOR'
AND SEXO = 'F';

