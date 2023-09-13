program ccifras;

var a,part,rest : integer;

begin 
	write('Ingrese un entero de hasta cuatro cifras: '); readLn(a);
	part := a div 1000;
	rest := a mod 1000;
	if part <> 0 then
		writeLn(part:0,'.':1,rest:2)
	else
		writeLn(a:0)
end.			