(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  03
 Ejercicio: 12
*)



program cartas;
var peso, costo: real;
	aux : integer;

begin
	readln(peso);
	if (peso <=1) then
		costo := 0.22
	else
	begin
		{ ya el costo vale al menos 0.22 porq peso es mayor a 1}
		aux := trunc(peso-1);
		if (aux <> (peso-1)) then
			aux := aux + 1;
		costo := 0.22 + aux*0.17;
	end;

	writeln('Peso Costo');
	writeln(peso:3:2,' ',costo:3:2);
end.
