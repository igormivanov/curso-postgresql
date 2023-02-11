// Essa criação não é boa pois apenas declarando id como integer, É possível colocar
	null e até ter mais de um id com o mesmo número

CREATE TABLE curso (
    id INTEGER,
    nome VARCHAR(255)
);

// Melhor jeito é adicionar not null e unique para o id, que é a mesma coisa que
	adicionar o PRIMARY KEY
	
CREATE TABLE curso (
	id INTEGER PRIMARY KEY
	nome VARCHAR(255) NOT NULL
);

// Popular
INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');




