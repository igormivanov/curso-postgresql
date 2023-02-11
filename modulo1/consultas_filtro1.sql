select * from estudante where nome like 'A_a';
// Trás todos os alunos que possuem o nome parecido com A_a

select * from estudante where nome not like 'A_a';
// Trás todos os outros alunos que não possuem o nome parecido com A_a

select * from estudante where nome like 'A%';
// Trás todos os alunos que iniciarem com o 'A', não importando o resto que vem depois

// '%s' Agora irá trazer todos que terminarem com s
// '% %' Agora irá trazer todos que possuirem um espaço com nome, por exemplo nomes compostos
