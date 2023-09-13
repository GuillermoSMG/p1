(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  03
 Ejercicio: 15
*)

program hexa;
const base = 16;
var
	d1,d2,d3, res : integer;
	c1,c2,c3 : char;
begin
	readln(c1,c2,c3);
	if ('0' <= c1 ) and (c1 <= '9') then
		d1 := ord(c1) - 48{ord('1')=49}
	else
		case c1 of
			'A', 'a' : d1 := 10;
			'B', 'b' : d1 := 11;
			'C', 'c' : d1 := 12;
			'D', 'd' : d1 := 13;
			'E', 'e' : d1 := 14;
			'F', 'f' : d1 := 15;
		end;
	if ('0' <= c2 ) and (c2 <= '9') then
		d2 := ord(c2) - 48
	else
		case c2 of
			'A', 'a' : d2 := 10;
			'B', 'b' : d2 := 11;
			'C', 'c' : d2 := 12;
			'D', 'd' : d2 := 13;
			'E', 'e' : d2 := 14;
			'F', 'f' : d2 := 15;
		end;
	if ('0' <= c3 ) and (c3 <= '9')  then
		d3 := ord(c3) - 48
	else
		case c3 of
			'A', 'a' : d3 := 10;
			'B', 'b' : d3 := 11;
			'C', 'c' : d3 := 12;
			'D', 'd' : d3 := 13;
			'E', 'e' : d3 := 14;
			'F', 'f' : d3 := 15;
		end;

	res := d1 * sqr(base) + d2 * base + d3;
	writeln(res);

end.
