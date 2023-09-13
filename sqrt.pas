program ex21;
var	
		a,b,c : real;	
begin 
		write('Ingrese un número real positivo: ');
		readLn(a);
		b := exp((0.5)*(ln(a)));
		c := sqrt(a);
		writeLn('Valor introducido: ',a);
		writeLn('Raíz cuadrada calculada: ',b);
		writeLn('Valor de Sqrt(a): ',c)
end.		