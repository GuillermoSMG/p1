program valorexp;
var
       x,s,v : real;
begin
       write('Ingrese un valor real para x entre 0.0 y 1.0: ');
	   readLn(x);
	   v := (exp(x));
	   s := (1 + ((x)/1)+((sqr(x))/2)+((x*x*x)/6)+((x*x*x*x)/24));
	   writeLn('Valor introducido: ',x);
	   writeLn('Suma de los primeros cinco términos: ',s);
	   writeLn('Valor de Exp(x): ',v)
end.