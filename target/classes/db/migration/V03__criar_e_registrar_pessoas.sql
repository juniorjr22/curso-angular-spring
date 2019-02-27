CREATE TABLE pessoa(
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	ativo boolean NOT NULL,
	logradouro VARCHAR(100),
	numero BIGINT(10),
	complemento VARCHAR(100),
	bairro VARCHAR(30),
	cep  VARCHAR(10),
	cidade  VARCHAR(50),
	estado  VARCHAR(30)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('João da Silva', true, 'Rua do rosário', 250, 'Quadra 05', 'Rosário', '70800000', 'Luziânia', 'Goiás');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Marta Lúcia', true, 'Rua Artur', 33, 'Quadra 02 Lote 03', 'Centro', '70812345', 'Luziânia', 'Goiás');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Clarimundo', true, 'Rua Rubi', 123, 'Quadra 321', 'Jofre', '70811111', 'Luziânia', 'Goiás');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Fulano de tal', false, 'Rua da rua', 666, 'Quadra 666', 'Setor', '70822222', 'Brasília', 'Distrito Federal');
INSERT INTO pessoa (nome, ativo, numero, complemento, bairro, cep, cidade, estado) values ('Pessoa 1', true, 111, 'Quadra 11', 'Bairro 1', '70811111', 'Brasília', 'Distrito Federal');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Pessoa 2', true, 'Rua 2', 222, 'Quadra 22', 'Bairro 2', '70822222', 'Brasília', 'Distrito Federal');
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado) values ('Pessoa 3', true, 'Rua 3', 333, 'Bairro 3', '70833333', 'Brasília', 'Distrito Federal');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, cep, cidade, estado) values ('Pessoa 4', true, 'Rua 4', 444, 'Quadra 44', '70844444', 'Brasília', 'Distrito Federal');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cidade, estado) values ('Pessoa 5', true, 'Rua 5', 555, 'Quadra 55', 'Bairro 5', 'Brasília', 'Distrito Federal');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, estado) values ('Pessoa 6', true, 'Rua 6', 666, 'Quadra 66', 'Bairro 5', '70866666', 'Distrito Federal');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade) values ('Pessoa 7', true, 'Rua 7', 777, 'Quadra 77', 'Bairro 6', '70877777', 'Brasília');
INSERT INTO pessoa (nome, ativo, logradouro, complemento, bairro, cep, cidade, estado) values ('Pessoa 8', true, 'Rua 8', 'Quadra 77', 'Bairro 6', '70877777', 'Brasília', 'Distrito Federal');