/* UTILIZANDO O UPDATE PARA ATUALIZAR VALORES */

SELECT NOME, EMAIL
FROM CLIENTE;

UPDATE CLIENTE
SET EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT NOME, EMAIL
FROM CLIENTE;

/* WHERE - VAI SER O SEU MELHOR AMIGO DA VIDA
PRA VIDA INTEIRA */


SELECT * FROM CLIENTE
WHERE NOME = 'LILIAN';

UPDATE CLIENTE
SET EMAIL = 'JOAOA@IG.COM.BR'
WHERE NOME = 'JOAO';

SELECT NOME, EMAIL
FROM CLIENTE;

UPDATE CLIENTE
SET EMAIL = 'JORGE@IG.COM.BR'
WHERE NOME = 'JORGE';

SELECT NOME, EMAIL
FROM CLIENTE;

/*COMMIT E ROLLBACK */

/* DELETANDO REGISTROS COM A CLAUSULA DELETE */

DELETE FROM CLIENTE; 

SELECT * FROM CLIENTE WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE; -- TOTAL 6

SELECT COUNT(*) FROM CLIENTE -- TOTAL DELETADO 1
WHERE NOME = 'ANA';

DELETE FROM CLIENTE
WHERE NOME = 'ANA';

SELECT COUNT(*) FROM CLIENTE; -- RESTANTE 5

SELECT 6 - 1;

SELECT * FROM CLIENTE;

INSERT INTO CLIENTE VALUES('CARLA','F','C.LOPES@UOL.COM',45638854,'4575-0048',
'RUA COPPER LEAF - WILLIAMSBURG - KITCHENER');

SELECT * FROM CLIENTE;

DELETE FROM CLIENTE
WHERE NOME = 'CARLA'
OR EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT * FROM CLIENTE
WHERE NOME = 'CARLA'
OR EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT * FROM CLIENTE -- OR TRAZ TODO MUNDO COM PELO MENOS UMA DAS DUAS CONDICOES
WHERE NOME = 'CARLA'
AND EMAIL = 'LILIAN@HOTMAIL.COM';

DELETE FROM CLIENTE -- TRAZ APENAS O REGISTRO QUE SATISFACA AS DUAS CONDICOES
WHERE NOME = 'CARLA'
AND EMAIL = 'LILIAN@HOTMAIL.COM';

SELECT * FROM CLIENTE;

/* ENTRANDO COM MAIS TELEFONES */

UPDATE CLIENTE 
SET TELEFONE = '97865434'
WHERE NOME = 'JOAO';

SELECT * FROM CLIENTE;

UPDATE CLIENTE 
SET TELEFONE = '22923110 - 97865434'
WHERE NOME = 'JOAO';

SELECT * FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT ENDERECO, COUNT(*) FROM CLIENTE
GROUP BY ENDERECO;