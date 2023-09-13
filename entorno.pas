program entorno;
var 
	m,n,f,i,q : integer;

begin 
	write('Ingrese un valor para m y otro para n tal que m<=n: ');	readLn(m,n);
	
	i := m;
	f := sqr(i)- 18*(i) + 5;
	
	for i := m+1 to n do
	begin
		q := sqr(i)- 18*i + 5;
		if q > f then
			f := q;
	end;
	writeln('El valor máximo para x en el entorno de ', m:1, ' a ', n:1, ' es ', f:1 ,'.')
end.	