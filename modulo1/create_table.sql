CREATE TABLE aluno (
	id SERIAL, 			// Irá incrementar uma sequencia automatica ao id
	nome VARCHAR(255), 		// Tipo String, podendo ir até 255 caracteres
	cpf char(11),			// Para poucos caracteres 
	observacao TEXT,		// Texto sem limitação de tamanho
	idade INTEGER,			// Inteiro 
	ativo BOOLEAN,			// True, false, null
	data_nascimento DATE,	        // Data -> 2023-02-08
	hora_aula TIME,			// Horario -> 17:14:00
	matricula TIMESTAMP		// Data e hora -> 17:14:00 2023-02-08
);


