program lne;
var 
		a,b,c : real;
begin
		write('Ingrese un valor para a: ');
		readLn(a);
		write('Ingrese un valor para b: ');
		readLn(b);
		c := exp(b *(ln(a)));
		writeLn('El resultado es: ',c:0:0)
end.
