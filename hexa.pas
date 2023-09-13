program hexa;
const
	base = 16;
	
var 
	n1,n2,n3,dec : integer;
	c1,c2,c3 : char;

begin

	write('Ingrese un numero positivo hexadecimal de tres digitos: ');	readLn(c1,c2,c3);
	
	if ('0' <= c1) and (c1 <= '9') then
		n1 := ord(c1) - 48
	else
		case c1 of
		'A','a' : n1 := 10;
		'B','b' : n1 := 11;
		'C','c' : n1 := 12;
		'D','d' : n1 := 13;
		'E','e' : n1 := 14;
		'F','f' : n1 := 15;
		end;
	
	if ('0' <= c2) and (c2 <= '9') then
		n2 := ord(c2) - 48
	else
		case c2 of
		'A','a' : n2 := 10;
		'B','b' : n2 := 11;
		'C','c' : n2 := 12;
		'D','d' : n2 := 13;
		'E','e' : n2 := 14;
		'F','f' : n2 := 15;
		end;	
	
	if ('0' <= c3) and (c3 <= '9') then
		n3 := ord(c3) - 48
	else
		case c3 of
		'A','a' : n3 := 10;
		'B','b' : n3 := 11;
		'C','c' : n3 := 12;
		'D','d' : n3 := 13;
		'E','e' : n3 := 14;
		'F','f' : n3 := 15;
		end;
	
	dec := n1 * sqr(base) + n2 * base + n3 ;
	writeLn('Hexadecimal: ',c1,c2,c3,'	','Decimal: ',dec)
	
end.	