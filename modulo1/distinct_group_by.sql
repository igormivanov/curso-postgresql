-- DISTINCT : Garante que os dados do campo soliciado não se repitem 

-- Caso tenha duas pessoas com o mesmo nome, só irá aparecer uma
-- No caso de selecionar o sobrenome e tiver o mesmo nome, ambas aparecerão 

SELECT DISTINCT
        nome,
		sobrenome,
  FROM funcionarios
  ORDER BY nome;
  
  -- O comando group by é um agrupamento para realização de buscas com função de agregação
  -- Portanto, se o agrupamento da busca não precisar usar agregação, use o distinct
  
  -- Erro -> Irá dizer que os dados precisam estar num group by
  SELECT DISTINCT
       nome,
       sobrenome,
       COUNT(*)
  FROM funcionarios
  ORDER BY nome;
  
  -- Assim 
  SELECT
       nome,
       sobrenome,
       COUNT(*)
  FROM funcionarios
  GROUP BY nome, sobrenome
  ORDER BY nome;