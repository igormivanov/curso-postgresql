/*
	Cascade: Configuração que permite atualizar ou exclui os registros da tabela filha automaticamente, 
	ao atualizar ou excluir um registro da tabela pai
*/

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	FOREIGN KEY (aluno_id) REFERENCES aluno(id)
	FOREIGN KEY (curso_id) REFERENCES curso(id)
	ON DELETE CASCADE,
	ON UPDATE CASCADE
)

-- Restrict: Configuração padrão para impedir alguma alteração caso o pai possua filhos

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	FOREIGN KEY (aluno_id) REFERENCES aluno(id)
	FOREIGN KEY (curso_id) REFERENCES curso(id)
	ON DELETE RESTRICT,
	ON UPDATE RESTRICT
)
