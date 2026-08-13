CREATE TABLE cliente (
	id INT PRIMARY KEY,
	nome VARCHAR(100)
);

CREATE TABLE pedidos (
	id INT PRIMARY KEY,
	valor NUMERIC(10,2),
	cliente_id INT,
	FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

INSERT INTO cliente VALUES 
	(1, 'Jão'),
	(2, 'Rene'),
	(3, 'Natalia'),
	(4, 'Paulo Kogos');

SELECT * FROM cliente

INSERT INTO pedidos VALUES
	(20, 150.00, 1),
	(21, 200.00, 2),
	(22, 133.00, 3);

SELECT * FROM pedidos

UPDATE cliente
	SET nome = 'Rene Peter Parker'
	WHERE id = 2

UPDATE pedidos
	SET valor = 333.33
	WHERE id = 3

UPDATE pedidos
	SET cliente_id = 333
	WHERE id = 20

DELETE FROM cliente WHERE id = 4

SELECT * FROM cliente ORDER BY id

SELECT c.nome, p.valor
	FROM cliente c
	INNER JOIN pedidos p ON c.id = p.cliente_id









	