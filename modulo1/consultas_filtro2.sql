// Busca por null, não pode ser feito utilizando um =

select * from estudante where cpf is null;

select * from estudante where cpf is not null;

// Filtro between, exibe o resultado entre dois valores declarados
// Pode ser usando em Integer, serial, date, time timestamp...

select * from estudante where idade between 18 and 25;