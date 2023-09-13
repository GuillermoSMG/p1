program octal;
var 
		a,c,d,e,f : integer;
begin 
		write('Ingrese un número octal de tres dígitos: ');
		readLn(a);
		c := (a) div 100;
		d := (((a) div 10) mod 10);
		e := (a) mod 10;
		f := ((c)*(sqr(8)))+((d)*8)+(e);
		writeLn('Número octal ingresado: ',a:0,'= Decimal:',f:0)
end.