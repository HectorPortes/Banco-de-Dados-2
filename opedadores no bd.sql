CREATE TABLE cliente (
	id_cliente SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	cidade VARCHAR(100),
	estado VARCHAR(50),
	idade INT,
	renda NUMERIC (10, 2)
);

INSERT INTO cliente (nome, cidade, estado, idade, renda) VALUES
	('Tilabatisqueia', 'Rio Aquidauana', 'MS', 45, 1000000),
	('Tambaquilson', 'Água Clara', 'MS', 32, 350000),
	('Salmonenson', 'Rio Branco', 'AC', 100, 2000),
	('Carpawelinton', 'Rio Verde', 'GO', 33, 333),
	('Tucunarelson', 'Rio Taquarussul', 'MS', 20, 10000000)

SELECT * FROM cliente

SELECT * FROM cliente
	WHERE idade > 40

SELECT * FROM cliente
	WHERE idade <> 100

SELECT * FROM cliente
	WHERE estado = 'MS'

SELECT * FROM cliente
	WHERE idade BETWEEN 20 AND 40

/* Mesma coisa que BETWEEN */
SELECT * FROM cliente
	WHERE idade >= 20 AND idade <= 40

SELECT * FROM cliente 
	WHERE idade NOT BETWEEN 20 AND 40

/* Mesma coisa que NOT BETWEEN */
SELECT * FROM cliente
	WHERE idade < 20 OR idade > 40

SELECT * FROM cliente
	WHERE estado IN ('AC', 'GO')

/* Mesma coisa que o IN */
SELECT * FROM cliente
	WHERE estado = 'AC' OR estado = 'GO'

SELECT * FROM cliente
	WHERE estado NOT IN ('AC', 'GO')

/* Mesma coisa que o NOT IN */
SELECT * FROM cliente
	WHERE estado <> 'AC' AND estado <> 'GO'

/* LIKE -> Busca algo que começa ou termina com um caractere (é case sensitive - importa se é minuscula ou maiscula)*/
SELECT * FROM cliente
	WHERE nome LIKE 'T%'

SELECT * FROM cliente
	WHERE nome LIKE '%n'

SELECT * FROM cliente
	WHERE nome LIKE 'T%' AND nome LIKE '%n'

/* ILIKE não é case sensitive (não importa se é maiuscula ou minuscula)*/
SELECT * FROM cliente
	WHERE nome ILIKE 't%n'

SELECT * FROM cliente
	WHERE nome ILIKE 'tuc%'