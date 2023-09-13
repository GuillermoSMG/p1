(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  03
 Ejercicio: 11
*)


program crammer;
var a,b,c,d,e ,f  : real;
	x,y : real;
	determinante : real;
begin
	readln(a,b,c,d,e,f);
	{ a b
	  d e }	
	determinante := a*e - d *b;
	if (determinante > 0) then
	begin
		x:= (c*e - f*b) / determinante;
		y := (a*f-d*c)/ determinante;
		writeln('x= ',x,' y= ',y);
	end
	else
		writeln('Sistema incompatible');
end.
