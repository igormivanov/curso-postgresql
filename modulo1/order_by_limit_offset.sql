-- ORDENAÇÃO

ORDER BY ASC -- Ordem crescente (Padrão)
ORDER BY DESC -- Ordem decrescente

select * from aluno order by id desc;
select * from aluno order by id asc;

-- Também é possível ordenar pela posição dos campos

select * from aluno order by 2,1;
select * from aluno order by 2 desc, 1 asc; -- Respeitar a ordem do primeiro comando

-- LIMIT

SELECT * FROM funcionarios
	ORDER BY id
	LIMIT 5 -- Limita o número de linhas que serão exibidas
	OFFSET 3; -- Tentar mostrar as 5 linhas partir da n linha
	

