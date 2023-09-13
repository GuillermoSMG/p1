program xey;
var 	
	x,y,f,n,q : integer;
	
begin
	write('Ingrese un valor para n: ');	readLn(n);
	
	f := -maxint;
	
	for x := (-n) to n do
		for y := (-n) to n do    
	begin
		q := sqr(x) - (9 * x * y) + sqr(y);
		if q > f then 
            f := q
	    end;		
	writeln('El valor máximo para x e y en el entorno de -', n:1, ' a ', n:1, ' es: ', f:1, '.')
end.	