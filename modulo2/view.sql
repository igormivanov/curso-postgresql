/* 
	VIEW: Nomear consultas utilizando tabelas virtuais
	vantagem: Segurança e maior legibilidade dos relatórios
	desvantagem: Pode causar numa perda de desempenho 
*/

CREATE VIEW vw_cursos_por_categoria
	AS select categoria.nome as categoria,
	count(curso.id) as numero_cursos
	FROM categoria
	JOIN curso on curso.categoria_id = categoria.id
	GROUP BY categoria;
	
select categoria from vw_cursos_por_categoria where numero_cursos >= 3;