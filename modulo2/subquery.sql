-- Subquery : Pode ser usada tanto como um filtro quanto uma tabela
-- Geralmente a subquery pode ser substituido por um HAVING

select curso.nome from curso where categoria_id IN (
	select id FROM categoria where nome NOT LIKE '% %'
);

-- A query de dentro retorna 1 e 2, já a de fora um IN (1,2)

Select categoria.nome as categoria, count(curso.id) as numero_cursos
	from categoria 
	join curso on curso.categoria_id = categoria.id
	GROUP BY categoria;

select categoria from (
	Select categoria.nome as categoria, count(curso.id) as numero_cursos
	from categoria 
	join curso on curso.categoria_id = categoria.id
	GROUP BY categoria
) as categoria_cursos
where numero_cursos >= 3;

-- Solução simplificada utilizando having 

Select categoria.nome as categoria, count(curso.id) as numero_cursos
	from categoria 
	join curso on curso.categoria_id = categoria.id
	GROUP BY categoria
	HAVING count(curso.id) > 3;