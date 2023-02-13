-- Gerar um relatório com os alunos matriculados e a quantidade de cursos que cada um está fazendo

SELECT aluno.primeiro_nome, aluno.ultimo_nome, COUNT(curso.id) numero_cursos
	FROM ALUNO
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso ON aluno_curso.curso_id = curso.id -- Como não vou usar o nome do curso, pode retirar esse join
	GROUP BY aluno.primeiro_nome, aluno.ultimo_nome
	ORDER BY numero_cursos DESC;
	
-- Versão mais otimizada
SELECT aluno.primeiro_nome, aluno.ultimo_nome, COUNT(aluno_curso.curso_id) numero_cursos
	FROM ALUNO
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	GROUP BY aluno.primeiro_nome, aluno.ultimo_nome
	ORDER BY numero_cursos DESC
	LIMIT 1; -- Caso queira a com mais cursos
