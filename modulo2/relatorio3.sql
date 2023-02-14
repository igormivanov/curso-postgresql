-- Relatório da categoria mais requisitada

select categoria.nome, count(curso.categoria_id) quantidade
	from curso 
	join aluno_curso on aluno_curso.curso_id = curso.id
	join categoria on curso.categoria_id = categoria.id
	group by 1
	order by quantidade desc
	limit 1;