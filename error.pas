program error;
var 
       m, v, er : real;
begin 
       writeLn('Ingrese el valor obtenido mediante medición: ');
	   readLn(m);
       writeLn('Ingrese el valor verdadero: ');
	   readLn(v);
	   er := (abs(m-v)/2);
	   writeLn('Medición: ',m);
	   writeLn('Valor verdadero: ',v);
	   writeLn('Error relativo: ', er)
end.
	   
