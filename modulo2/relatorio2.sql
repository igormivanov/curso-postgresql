-- Relatório do curso mais requisitado

select curso.nome, count(aluno_curso.aluno_id) alunos_matriculados
	from curso 
	join aluno_curso on aluno_curso.curso_id = curso.id
	group by 1
	order by alunos_matriculados desc
	limit 1;
	
select * from categoria;