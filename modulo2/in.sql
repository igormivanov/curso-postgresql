-- IN :  operador para especificar vários valores em uma cláusula WHERE

select * from curso where categoria_id = 1 or categoria_id = 2;

-- Utilizando o in / mesmo resultado
-- Caso fosse IN (3), seria exibido só a categoria 3

select * from curso where categoria_id IN (1,2);

-- Outro exemplo

select * from aluno where primeiro_nome in ('Vinicius', 'Maria');

