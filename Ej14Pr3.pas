(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  03
 Ejercicio: 14
*)


program ecuacion;
var
	a,b,c,x1,x2 : real;
	disc, raizdisc : real;
begin
	readln(a,b,c);
	writeln('a= ',a:2:1,' b= ',b:2:1,' c= ',c:2:1);

	disc := sqr(b) -4*a*c;

	if (disc = 0) then {unica solucion}
	begin
		x1 := -b / (2*a);
		writeln('Dos raices reales iguales : ',x1:6:3);
	end
	else
		if (disc > 0) then {dos raices reales distintas}
		begin
			raizdisc := sqrt(disc);
			x1 := (-b + raizdisc) / (2*a);
			x2 := (-b - raizdisc) / (2*a);
			writeln('Dos raices reales diferentes: ', x1:6:3, ' y ', x2:6:3);
		end
		else {Raices imaginarias}
		begin
			x1 := -b /(2*a); {parte real}
			x2 := sqrt(-disc) / (2*a); {parte compleja}
			writeln('Dos raices imaginarias diferentes: ',x1:6:3,' (+/-) ',x2:6:3);
		end
end.
