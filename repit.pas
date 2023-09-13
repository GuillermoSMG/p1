(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  03
 Ejercicio: 13
*)


program apar;
var
	num, copiaNum, digito : integer;
	aux:integer;
	aparecio : boolean;
begin
	write('Ingrese un entero de 4 digitos: '); readln(num);
	write('Ingrese un entero de 1 digito: ');readln(digito);

	copiaNum := num;

	aparecio := false;
	aux := num div 1000;
	if (aux = digito) then
	begin
		aparecio := true;
		writeln(copiaNum);
		write('+');
	end;

	num := num mod 1000;

	aux := num div 100;
	if (aux = digito) then
	begin
		if (not aparecio) then
		begin
			aparecio := true;
			writeln(copiaNum);
			write(' +');
		end
		else
			write('+');
	end
	else
		if (aparecio) then
			write(' ');

	num := num mod 100;

	aux := num div 10;
	if (aux = digito) then
	begin
		if (not aparecio) then
		begin
			aparecio := true;
			writeln(copiaNum);
			write('  +');
		end
		else
			write('+');
	end
	else
		if (aparecio) then
			write(' ');

	num := num mod 10;

	if (num = digito) then
	begin
		if (not aparecio) then
		begin
			aparecio := true;
			writeln(copiaNum);
			write('   +');
		end
		else
			write('+');
	end
	else
		if (aparecio) then
			write(' ');

	if (not aparecio) then
		writeln(digito, ' no aparece en ', copiaNum);

end.
