/* 
Foreign key = campo que estabelece o relacionamento entre duas tabelas
Uma limitação para especificar que o valor de uma coluna ou múltiplas colunas
precisa corresponder a alguma linha de outra tabela 

Ex: Para que não seja possível ter um aluno que não existe relacionado com uma matéria,
dando um possível erro de inconsistência
*/

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id), -- Chave primeira composta
	
	FOREIGN KEY (aluno_id) REFERENCES aluno(id),
	FOREIGN KEY (curso_id) REFERENCES curso(id)
);

-- Agora a chave estrangeira verifica se existe o aluno e o curso com id tal, evitando inconsistencia

/* 
Exemplo: Você está reestruturando um cadastro de funcionários e seus departamentos. Antes, a pessoa
que incluía os funcionários no sistema podia digitar qualquer nome de departamento. Então você resolve
criar um cadastro de departamentos e vincular o cadastro de funcionários ao departamento
*/

CREATE TABLE departamentos (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

CREATE TABLE funcionarios (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	departamento_id INTEGER,
	
	FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);
