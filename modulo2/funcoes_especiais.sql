-- Funções especiais do Postgre

-- Concatenação ||
select (primeiro_nome || ' ' || ultimo_nome) from aluno;

-- CONCAT -> vai ignorar o null
select 'Vinicius' || ' ' || null; -- Vai dar null
select CONCAT('Vinicius', null, 'Dias'); -- Correto

-- UPPER -> Letra maiuscula
select UPPER(CONCAT('Vinicius', null, 'Dias'));

-- TRIM -> Vai retirar todos 0s espaços do inicio e do fim
select TRIM(UPPER(CONCAT('Vinicius', null, 'Dias')));

-- Funções de DATA
select primeiro_nome, AGE(data_nascimento) as idade from aluno;
select primeiro_nome, EXTRACT(YEAR FROM AGE(data_nascimento)) as idade from aluno;

-- Funções de conversão
select now();
select TO_CHAR(NOW(), 'DD/MM/YYYY'); -- Transforma para String e retorna ele formatado
select TO_CHAR(128.3::REAL, '999D99');
