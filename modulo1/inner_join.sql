SELECT aluno.nome as aluno, curso.nome as curso
	FROM aluno
	JOIN aluno_curso on aluno_curso.aluno_id = aluno.id
	JOIN curso on aluno_curso.curso_id = curso.id;
	
-- Juntou a tabela aluno com aluno_curso, vinculando o id do aluno_curso com o id do aluno

-- Adicionar um aluno e um curso, porém sem viculo entre eles
-- Utilizando o LEFT JOIN, é retornado o nesse caso, o aluno sem curso

SELECT aluno.nome as aluno, curso.nome as curso
	FROM aluno
	LEFT JOIN aluno_curso on aluno_curso.aluno_id = aluno.id
	LEFT JOIN curso on aluno_curso.curso_id = curso.id;
	
-- Utilizando o RIGHT JOIN, é retornado o nesse caso, o curso que não possui alunos

SELECT aluno.nome as aluno, curso.nome as curso
	FROM aluno
	RIGHT JOIN aluno_curso on aluno_curso.aluno_id = aluno.id
	RIGHT JOIN curso on aluno_curso.curso_id = curso.id;
	
-- Utilizar FULL JOIN para mostrar tanto o aluno sem curso, quanto o curso sem alunos

SELECT aluno.nome as aluno, curso.nome as curso
	FROM aluno
	FULL JOIN aluno_curso on aluno_curso.aluno_id = aluno.id
	FULL JOIN curso on aluno_curso.curso_id = curso.id;
